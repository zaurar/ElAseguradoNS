//
//  EnlaceViewController.m
//  ElAseguradoNS
//
//  Created by Fayer on 3/11/13.
//  Copyright (c) 2013 HaiKuStudio. All rights reserved.
//

#import "EnlaceViewController.h"

@interface EnlaceViewController ()

@end

@implementation EnlaceViewController
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


-(IBAction)sendMail
{
    /* create mail subject */
    NSString *subject = [NSString stringWithFormat:@"Feedback desde app El Asegurador Publicación Digital"];
    
    /* define email address */
    NSString *mail = [NSString stringWithFormat:@"info@elasegurador.mx"];
    
    /* create the URL */
    NSURL *url = [[NSURL alloc] initWithString:[NSString stringWithFormat:@"mailto:?to=%@&Subject=%@",
                                                [mail stringByAddingPercentEscapesUsingEncoding:NSASCIIStringEncoding],
                                                [subject stringByAddingPercentEscapesUsingEncoding:NSASCIIStringEncoding]]];
    
    /* load the URL */
    [[UIApplication sharedApplication] openURL:url];
}

-(IBAction)URLWeb
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.elasegurador.mx"]];
}

-(IBAction)OpenAMSF
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://itunes.apple.com/mx/app/anuario-mexicano-seguros-y/id587043259?mt=8"]];
}

-(IBAction)URLTwitter
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://twitter.com/ElAsegurador"]];
}

-(IBAction)URLFB
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://facebook.com/ElAsegurador.periodico"]];
}

-(IBAction)makeCall{
    NSString *phoneNumber = [@"telprompt://" stringByAppendingString:@"018008219393"];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:phoneNumber]];
}

@end
