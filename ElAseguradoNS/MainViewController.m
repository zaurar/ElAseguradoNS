//
//  MainViewController.m
//  ElAseguradoNS
//
//  Created by Fayer on 3/4/13.
//  Copyright (c) 2013 HaiKuStudio. All rights reserved.
//

#import "MainViewController.h"



@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
}

-(void) viewWillAppear:(BOOL)animated{
    UIImageView *fondo = (UIImageView *)[self.view viewWithTag:1001];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *fondoString = [defaults objectForKey:@"fondo"];
    
    if (fondoString == nil){
        [defaults setObject:@"Common-Wood-Back(1,1).png" forKey:@"fondo"];
        [defaults setObject:@"Common-Wood-Back.png" forKey:@"fondoChico"];
    }
    
    NSString *deviceType = [UIDevice currentDevice].model;
    
    if([deviceType isEqualToString:@"iPhone"] || [deviceType isEqualToString:@"iPod touch"]) {
        if (fondoString == nil){
            
            fondo.image = [UIImage imageNamed:@"Common-Wood-Back(1,1).png"];
        }
        else
            fondo.image = [UIImage imageNamed:fondoString];
    }
    else {
        NSURLRequest *request = [NSURLRequest requestWithURL:
                                 [NSURL URLWithString:@"http://haikustudio.in/PEAm/NewNews-iPad.html"]] ;
        
        [webView loadRequest:request] ;
        
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
