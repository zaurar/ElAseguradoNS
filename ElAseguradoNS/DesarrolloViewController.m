//
//  DesarrolloViewController.m
//  ElAseguradoNS
//
//  Created by Fayer on 3/11/13.
//  Copyright (c) 2013 HaiKuStudio. All rights reserved.
//

#import "DesarrolloViewController.h"

@interface DesarrolloViewController ()

@end

@implementation DesarrolloViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(void) viewWillAppear:(BOOL)animated{
    UIImageView *fondo = (UIImageView *)[self.view viewWithTag:1001];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
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

-(IBAction)sendMailContacto
{
    /* create mail subject */
    NSString *subject = [NSString stringWithFormat:@"Feedback desde app El Asegurador Publicación Digital"];
    
    /* define email address */
    NSString *mail = [NSString stringWithFormat:@"reach@haikustudio.in"];
    
    /* create the URL */
    NSURL *url = [[NSURL alloc] initWithString:[NSString stringWithFormat:@"mailto:?to=%@&Subject=%@",
                                                [mail stringByAddingPercentEscapesUsingEncoding:NSASCIIStringEncoding],
                                                [subject stringByAddingPercentEscapesUsingEncoding:NSASCIIStringEncoding]]];
    
    /* load the URL */
    [[UIApplication sharedApplication] openURL:url];
}

-(IBAction)sendMailBug
{
    /* create mail subject */
    NSString *subject = [NSString stringWithFormat:@"Feedback desde app El Asegurador Publicación Digital"];
    
    /* define email address */
    NSString *mail = [NSString stringWithFormat:@"reach@haikustudio.in"];
    
    /* create the URL */
    NSURL *url = [[NSURL alloc] initWithString:[NSString stringWithFormat:@"mailto:?to=%@&Subject=%@",
                                                [mail stringByAddingPercentEscapesUsingEncoding:NSASCIIStringEncoding],
                                                [subject stringByAddingPercentEscapesUsingEncoding:NSASCIIStringEncoding]]];
    
    /* load the URL */
    [[UIApplication sharedApplication] openURL:url];
}

-(IBAction)URLWeb
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.haikustudio.in"]];
}


-(IBAction)makeCall{
    NSString *phoneNumber = [@"telprompt://" stringByAppendingString:@"62685633"];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:phoneNumber]];
}



@end
