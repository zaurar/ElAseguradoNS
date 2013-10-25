//
//  NoticiaReaderViewController.m
//  ElAseguradoNS
//
//  Created by Fayer on 3/1/13.
//  Copyright (c) 2013 HaiKuStudio. All rights reserved.
//

#import "NoticiaReaderViewController.h"

@interface NoticiaReaderViewController (){
    NSUserDefaults *defaults;
    int cuartoNum;
    int noticiaNum;
    NSArray * meses;
    NSDictionary * cuarto;
    NSNumber *rowClicked;
    NSNumber *cuartoSeleccionado;
    NSNumber *noticiaClicked;
}

@end

@implementation NoticiaReaderViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    defaults = [NSUserDefaults standardUserDefaults];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    cuartoSeleccionado = [defaults objectForKey:@"cuartoSeleccionado"];
    noticiaClicked = [defaults objectForKey:@"noticiaClicked"];
    cuartoNum = [cuartoSeleccionado intValue];
    noticiaNum = [noticiaClicked intValue];
    
    NSError* err = nil;
    NSString* dataPath = [[NSBundle mainBundle] pathForResource:@"AseguradorNS" ofType:@"json"];
    NSDictionary* json = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:dataPath]
                                                         options:kNilOptions
                                                           error:&err];
    
    
    rowClicked = [defaults objectForKey:@"rowClicked"];
    meses = [json objectForKey:@"meses"];
    cuarto = meses[[rowClicked intValue]][cuartoNum];
    
    readerBody.text = [cuarto objectForKey:@"noticiasBody"][noticiaNum];
    self.title = [cuarto objectForKey:@"noticiasTitles"][noticiaNum];
    
    UIImageView *fondo = (UIImageView *)[self.view viewWithTag:1001];
    NSString *fondoString = [defaults objectForKey:@"fondo"];
    
    NSString *deviceType = [UIDevice currentDevice].model;
    
    if([deviceType isEqualToString:@"iPhone"] || [deviceType isEqualToString:@"iPod touch"]) {
        if (fondoString == nil){
            fondo.image = [UIImage imageNamed:@"Common-Wood-Back(1,1).png"];
        }
        else
            fondo.image = [UIImage imageNamed:fondoString];
    }
    else {
        if (fondoString == nil){
            fondo.image = [UIImage imageNamed:@"iPad-Common-Complete-Wood-Back.png"];
        }
        else{
            if ([fondoString isEqualToString:@"Common-Wood-Back(1,1).png"])
                fondo.image = [UIImage imageNamed:@"iPad-Common-Complete-Wood-Back.png"];
            if ([fondoString isEqualToString:@"Common-Cloth-Back(1,1).png"])
                fondo.image = [UIImage imageNamed:@"iPad-Common-Complete-Cloth-Back.png"];
            if ([fondoString isEqualToString:@"Common-White-Back(1,1).png"])
                fondo.image = [UIImage imageNamed:@"iPad-Common-Complete-White-Back.png"];
        }
        
        
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
