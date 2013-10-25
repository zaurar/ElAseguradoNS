//
//  webViewController.m
//  ElAseguradoNS
//
//  Created by Fayer on 8/14/13.
//  Copyright (c) 2013 HaiKuStudio. All rights reserved.
//

#import "webViewController.h"

@interface webViewController ()

@end

@implementation webViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImageView *fondo = (UIImageView *)[self.view viewWithTag:1001];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *fondoString = [defaults objectForKey:@"fondo"];
    
    if (fondoString == nil){
        [defaults setObject:@"Common-Wood-Back(1,1).png" forKey:@"fondo"];
        [defaults setObject:@"Common-Wood-Back.png" forKey:@"fondoChico"];
    }
    
    
    if (fondoString == nil){
        
        fondo.image = [UIImage imageNamed:@"Common-Wood-Back(1,1).png"];
    }
    else
        fondo.image = [UIImage imageNamed:fondoString];
    
    
	// Do any additional setup after loading the view.
    
    NSURLRequest *request = [NSURLRequest requestWithURL:
                             [NSURL URLWithString:@"http://haikustudio.in/PEAm/newnewssmall.html"]] ;
    
    [webView loadRequest:request] ;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
