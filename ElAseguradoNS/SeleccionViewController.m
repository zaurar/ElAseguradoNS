//
//  SeleccionViewController.m
//  ElAseguradoNS
//
//  Created by Fayer on 2/13/13.
//  Copyright (c) 2013 HaiKuStudio. All rights reserved.
//

#import "SeleccionViewController.h"

@interface SeleccionViewController (){
    QLPreviewController *previewController;
    NSUserDefaults *defaults;
    int cuartoNum;
    NSArray * meses;
    NSDictionary * cuarto;
    NSNumber *rowClicked;
    NSNumber *cuartoSeleccionado;
    NSArray *noticias;
}

@property (nonatomic, strong) UIBarButtonItem * rightButton;

@end

@implementation SeleccionViewController
{
    NSString* namePDF;
}


- (void)viewDidLoad
{
    
    
    defaults = [NSUserDefaults standardUserDefaults];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    //creating the object of the QLPreviewController
    previewController = [[QLPreviewController alloc] init];
    
    cuartoSeleccionado = [defaults objectForKey:@"cuartoSeleccionado"];
    
    cuartoNum = [cuartoSeleccionado intValue];
    
    NSError* err = nil;
    NSString* dataPath = [[NSBundle mainBundle] pathForResource:@"AseguradorNS" ofType:@"json"];
    NSDictionary* json = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:dataPath]
                                                         options:kNilOptions
                                                           error:&err];
    
    
    rowClicked = [defaults objectForKey:@"rowClicked"];
    
    meses = [json objectForKey:@"meses"];
    cuarto = meses[[rowClicked intValue]][cuartoNum];
    noticias = [cuarto objectForKey:@"noticiasTitles"];
    namePDF = [cuarto objectForKey:@"PDF"];
    
}

-(void)viewDidAppear:(BOOL)animated{
    //remove the right bar print button
}


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)botonPDF{
    //settnig the datasource property to self
    previewController.dataSource = self;
    
    //pusing the QLPreviewController to the navigation stack
    [[self navigationController] pushViewController:previewController animated:YES];
    
}

// Returns the number of items that the preview controller should preview
- (NSInteger)numberOfPreviewItemsInPreviewController:(QLPreviewController *)previewController
{
    return 1; //you can increase this
}

// returns the item that the preview controller should preview
- (id)previewController:(QLPreviewController *)previewController previewItemAtIndex:(NSInteger)idx
{
    NSString* dataPath = [[NSBundle mainBundle] pathForResource:namePDF ofType:@"pdf"];
    return [NSURL fileURLWithPath:dataPath];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return noticias.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if (cell == nil)
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    
    cell.textLabel.text = noticias[indexPath.row];
    
    return cell;
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [defaults setObject:[NSNumber numberWithInt:indexPath.row] forKey:@"noticiaClicked"];
    [self performSegueWithIdentifier: @"segueReader" sender: self];
}

@end