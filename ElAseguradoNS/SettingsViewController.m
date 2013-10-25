//
//  SettingsViewController.m
//  ElAseguradoNS
//
//  Created by Fayer on 3/8/13.
//  Copyright (c) 2013 HaiKuStudio. All rights reserved.
//

#import "SettingsViewController.h"
#import "AseguradorIAPHelper.h"


@interface SettingsViewController (){
    UIImageView *fondo;
    NSUserDefaults *defaults;
    NSString *deviceType;
    int tutCount;

}

@end

@implementation SettingsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    tutCount = 1;
    tut.image = [UIImage imageNamed:[NSString stringWithFormat:@"Tut-0%d.jpg", tutCount ]];
    
    fondo = (UIImageView *)[self.view viewWithTag:1001];
    defaults = [NSUserDefaults standardUserDefaults];
    NSString *fondoString = [defaults objectForKey:@"fondo"];
        
    deviceType = [UIDevice currentDevice].model;
    
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

- (IBAction)restoreTapped {
    [[AseguradorIAPHelper sharedInstance] restoreCompletedTransactions];
}

- (IBAction)changeFondo1{    
    if([deviceType isEqualToString:@"iPhone"] || [deviceType isEqualToString:@"iPod touch"]) {
        fondo.image = [UIImage imageNamed:@"Common-Wood-Back(1,1).png"];

    }
    
    else {
        fondo.image = [UIImage imageNamed:@"iPad-Common-Complete-Wood-Back.png"];
        
    }
        
    [defaults setObject:@"Common-Wood-Back(1,1).png" forKey:@"fondo"];
    [defaults setObject:@"Common-Wood-Back.png" forKey:@"fondoChico"];
}

- (IBAction)changeFondo2{
    if([deviceType isEqualToString:@"iPhone"] || [deviceType isEqualToString:@"iPod touch"]) {
        fondo.image = [UIImage imageNamed:@"Common-Cloth-Back(1,1).png"];
        
    }
    
    else {
        fondo.image = [UIImage imageNamed:@"iPad-Common-Complete-Cloth-Back.png"];
    }
    [defaults setObject:@"Common-Cloth-Back(1,1).png" forKey:@"fondo"];
    [defaults setObject:@"Common-Cloth-Back.png" forKey:@"fondoChico"];
    
}

- (IBAction) tutIzquierdo{
    if(tutCount == 1)
        tutCount = 4;
    else
        tutCount = tutCount -1;
    
    tut.image = [UIImage imageNamed:[NSString stringWithFormat:@"Tut-0%d.jpg", tutCount ]];
}

- (IBAction) tutDerecho{
    if(tutCount == 4)
        tutCount = 1;
    else
        tutCount = tutCount + 1;
    tut.image = [UIImage imageNamed:[NSString stringWithFormat:@"Tut-0%d.jpg", tutCount ]];
}


- (IBAction)changeFondo3{
    
    if([deviceType isEqualToString:@"iPhone"] || [deviceType isEqualToString:@"iPod touch"]) {
        fondo.image = [UIImage imageNamed:@"Common-White-Back(1,1).png"];
        
    }
    
    else {
        fondo.image = [UIImage imageNamed:@"iPad-Common-Complete-White-Back.png"];
    }
    
    [defaults setObject:@"Common-White-Back(1,1).png" forKey:@"fondo"];
    [defaults setObject:@"Common-White-Back.png" forKey:@"fondoChico"];
}

@end
