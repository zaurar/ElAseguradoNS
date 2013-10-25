//
//  AseguradorNSViewController.m
//  ElAseguradoNS
//
//  Created by Fayer on 2/8/13.
//  Copyright (c) 2013 HaiKuStudio. All rights reserved.
//

#import "AseguradorNSViewController.h"


@interface AseguradorNSViewController ()


@end


@implementation AseguradorNSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *fondoString = [defaults objectForKey:@"fondoChico"];
    
    NSString *deviceType = [UIDevice currentDevice].model;
    
    if([deviceType isEqualToString:@"iPhone"] || [deviceType isEqualToString:@"iPod touch"]) {
        if (fondoString == nil){
            fondoCelda1.image = [UIImage imageNamed:@"Common-Wood-Back.png"];
            fondoCelda2.image = [UIImage imageNamed:@"Common-Wood-Back.png"];
            fondoCelda3.image = [UIImage imageNamed:@"Common-Wood-Back.png"];
            fondoCelda4.image = [UIImage imageNamed:@"Common-Wood-Back.png"];
            fondoCelda5.image = [UIImage imageNamed:@"Common-Wood-Back.png"];
            fondoCelda6.image = [UIImage imageNamed:@"Common-Wood-Back.png"];
            fondoCelda7.image = [UIImage imageNamed:@"Common-Wood-Back.png"];
            fondoCelda8.image = [UIImage imageNamed:@"Common-Wood-Back.png"];
            fondoCelda9.image = [UIImage imageNamed:@"Common-Wood-Back.png"];
            fondoCelda10.image = [UIImage imageNamed:@"Common-Wood-Back.png"];
            fondoCelda11.image = [UIImage imageNamed:@"Common-Wood-Back.png"];
            fondoCelda12.image = [UIImage imageNamed:@"Common-Wood-Back.png"];
        }
        else
            fondoCelda1.image = [UIImage imageNamed:fondoString];
            fondoCelda2.image = [UIImage imageNamed:fondoString];
            fondoCelda3.image = [UIImage imageNamed:fondoString];
            fondoCelda4.image = [UIImage imageNamed:fondoString];
            fondoCelda5.image = [UIImage imageNamed:fondoString];
            fondoCelda6.image = [UIImage imageNamed:fondoString];
            fondoCelda7.image = [UIImage imageNamed:fondoString];
            fondoCelda8.image = [UIImage imageNamed:fondoString];
            fondoCelda9.image = [UIImage imageNamed:fondoString];
            fondoCelda10.image = [UIImage imageNamed:fondoString];
            fondoCelda11.image = [UIImage imageNamed:fondoString];
            fondoCelda12.image = [UIImage imageNamed:fondoString];
    }
    else {
        if (fondoString == nil){
            fondoCelda1.image = [UIImage imageNamed:@"iPad-Common-Back-Wood.png"];
            fondoCelda2.image = [UIImage imageNamed:@"iPad-Common-Back-Wood.png"];
            fondoCelda3.image = [UIImage imageNamed:@"iPad-Common-Back-Wood.png"];
            fondoCelda4.image = [UIImage imageNamed:@"iPad-Common-Back-Wood.png"];
            fondoCelda5.image = [UIImage imageNamed:@"iPad-Common-Back-Wood.png"];
            fondoCelda6.image = [UIImage imageNamed:@"iPad-Common-Back-Wood.png"];
            fondoCelda7.image = [UIImage imageNamed:@"iPad-Common-Back-Wood.png"];
            fondoCelda8.image = [UIImage imageNamed:@"iPad-Common-Back-Wood.png"];
            fondoCelda9.image = [UIImage imageNamed:@"iPad-Common-Back-Wood.png"];
            fondoCelda10.image = [UIImage imageNamed:@"iPad-Common-Back-Wood.png"];
            fondoCelda11.image = [UIImage imageNamed:@"iPad-Common-Back-Wood.png"];
            fondoCelda12.image = [UIImage imageNamed:@"iPad-Common-Back-Wood.png"];
            
        }
        else{
            if ([fondoString isEqualToString:@"Common-Wood-Back.png"]){
                fondoCelda1.image = [UIImage imageNamed:@"iPad-Common-Back-Wood.png"];
                fondoCelda2.image = [UIImage imageNamed:@"iPad-Common-Back-Wood.png"];
                fondoCelda3.image = [UIImage imageNamed:@"iPad-Common-Back-Wood.png"];
                fondoCelda4.image = [UIImage imageNamed:@"iPad-Common-Back-Wood.png"];
                fondoCelda5.image = [UIImage imageNamed:@"iPad-Common-Back-Wood.png"];
                fondoCelda6.image = [UIImage imageNamed:@"iPad-Common-Back-Wood.png"];
                fondoCelda7.image = [UIImage imageNamed:@"iPad-Common-Back-Wood.png"];
                fondoCelda8.image = [UIImage imageNamed:@"iPad-Common-Back-Wood.png"];
                fondoCelda9.image = [UIImage imageNamed:@"iPad-Common-Back-Wood.png"];
                fondoCelda10.image = [UIImage imageNamed:@"iPad-Common-Back-Wood.png"];
                fondoCelda11.image = [UIImage imageNamed:@"iPad-Common-Back-Wood.png"];
                fondoCelda12.image = [UIImage imageNamed:@"iPad-Common-Back-Wood.png"];
            }
            if ([fondoString isEqualToString:@"Common-Cloth-Back.png"]){
                fondoCelda1.image = [UIImage imageNamed:@"iPad-Common-Back-Cloth.png"];
                fondoCelda2.image = [UIImage imageNamed:@"iPad-Common-Back-Cloth.png"];
                fondoCelda3.image = [UIImage imageNamed:@"iPad-Common-Back-Cloth.png"];
                fondoCelda4.image = [UIImage imageNamed:@"iPad-Common-Back-Cloth.png"];
                fondoCelda5.image = [UIImage imageNamed:@"iPad-Common-Back-Cloth.png"];
                fondoCelda6.image = [UIImage imageNamed:@"iPad-Common-Back-Cloth.png"];
                fondoCelda7.image = [UIImage imageNamed:@"iPad-Common-Back-Cloth.png"];
                fondoCelda8.image = [UIImage imageNamed:@"iPad-Common-Back-Cloth.png"];
                fondoCelda9.image = [UIImage imageNamed:@"iPad-Common-Back-Cloth.png"];
                fondoCelda10.image = [UIImage imageNamed:@"iPad-Common-Back-Cloth.png"];
                fondoCelda11.image = [UIImage imageNamed:@"iPad-Common-Back-Cloth.png"];
                fondoCelda12.image = [UIImage imageNamed:@"iPad-Common-Back-Cloth.png"];
            }
            if ([fondoString isEqualToString:@"Common-White-Back.png"]){
                fondoCelda1.image = [UIImage imageNamed:@"iPad-Common-Back-White.png"];
                fondoCelda2.image = [UIImage imageNamed:@"iPad-Common-Back-White.png"];
                fondoCelda3.image = [UIImage imageNamed:@"iPad-Common-Back-White.png"];
                fondoCelda4.image = [UIImage imageNamed:@"iPad-Common-Back-White.png"];
                fondoCelda5.image = [UIImage imageNamed:@"iPad-Common-Back-White.png"];
                fondoCelda6.image = [UIImage imageNamed:@"iPad-Common-Back-White.png"];
                fondoCelda7.image = [UIImage imageNamed:@"iPad-Common-Back-White.png"];
                fondoCelda8.image = [UIImage imageNamed:@"iPad-Common-Back-White.png"];
                fondoCelda9.image = [UIImage imageNamed:@"iPad-Common-Back-White.png"];
                fondoCelda10.image = [UIImage imageNamed:@"iPad-Common-Back-White.png"];
                fondoCelda11.image = [UIImage imageNamed:@"iPad-Common-Back-White.png"];
                fondoCelda12.image = [UIImage imageNamed:@"iPad-Common-Back-White.png"];
            }
        }
        
        
        
        
        
    }
    
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013marzoq1"]){
        marzoCompradoLeft.hidden = FALSE;
    }
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013marzoq2"]){
        marzoCompradoRight.hidden = FALSE;
    }
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013abrilq1"]){
        abrilCompradoLeft.hidden = FALSE;
    }
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013abrilq2"]){
        abrilCompradoRight.hidden = FALSE;
    }
    
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013marzocombo"]){
        marzoCompradoRight.hidden = FALSE;
        marzoCompradoLeft.hidden = FALSE;
    }
    
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013abrilcombo"]){
        abrilCompradoLeft.hidden = FALSE;
        abrilCompradoRight.hidden = FALSE;
        
    }
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013mayoq1"]){
        mayoCompradoLeft.hidden = FALSE;
    }
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013mayoq2"]){
        mayoCompradoRight.hidden = FALSE;
    }
    
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013mayocombo"]){
        mayoCompradoRight.hidden = FALSE;
        mayoCompradoLeft.hidden = FALSE;
    }
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013junioq1"]){
        junioCompradoLeft.hidden = FALSE;
    }
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013junioq2"]){
        junioCompradoRight.hidden = FALSE;
    }
    
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013juniocombo"]){
        junioCompradoRight.hidden = FALSE;
        junioCompradoLeft.hidden = FALSE;
    }
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013julioq1"]){
        julioCompradoLeft.hidden = FALSE;
    }
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013julioq2"]){
        julioCompradoRight.hidden = FALSE;
    }
    
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013juliocombo"]){
        julioCompradoRight.hidden = FALSE;
        julioCompradoLeft.hidden = FALSE;
    }
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013agostoq1"]){
        agostoCompradoLeft.hidden = FALSE;
    }
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013agostoQ2"]){
        agostoCompradoRight.hidden = FALSE;
    }
    
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013agostocombo"]){
        agostoCompradoRight.hidden = FALSE;
        agostoCompradoLeft.hidden = FALSE;
    }
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013septiembreq1"]){
        septiembreCompradoLeft.hidden = FALSE;
    }
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013septiembreq2"]){
        septiembreCompradoRight.hidden = FALSE;
    }
    
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"iin.haikustudio.elaseguradorns.2013septiembrecombo"]){
        septiembreCompradoRight.hidden = FALSE;
        septiembreCompradoLeft.hidden = FALSE;
    }
    
    
    
    
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    NSString *deviceType = [UIDevice currentDevice].model;
    
    if([deviceType isEqualToString:@"iPhone"] || [deviceType isEqualToString:@"iPod touch"]) {
        return 168;
    }
    else {
        return 240;
    }
}



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:[NSNumber numberWithInt:indexPath.row] forKey:@"rowClicked"];
    NSString *deviceType = [UIDevice currentDevice].model;
    
    if (indexPath.row == 0 ){
        [self performSegueWithIdentifier: @"seguePreview" sender: self];
    }
    
    if (indexPath.row == 1){
        [self performSegueWithIdentifier: @"seguePreview" sender: self];
    }
    
    if (indexPath.row == 2){
        [self performSegueWithIdentifier: @"seguePreview" sender: self];
    }
    
    if (indexPath.row == 3){
        [self performSegueWithIdentifier: @"seguePreview" sender: self];
    }
    
    if (indexPath.row == 4){
        [self performSegueWithIdentifier: @"seguePreview" sender: self];
    }
    
    if (indexPath.row == 5){
        [self performSegueWithIdentifier: @"seguePreview" sender: self];
    }
    
    if (indexPath.row == 6){
        [self performSegueWithIdentifier: @"seguePreview" sender: self];
    }
    
    if (indexPath.row == 7){
        [self performSegueWithIdentifier: @"seguePreview" sender: self];
    }
    
    if (indexPath.row == 8){
        [self performSegueWithIdentifier: @"seguePreview" sender: self];
    }
    
    if (indexPath.row == 9){
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"http://bit.ly/AMSFiPhone"]];
    }
    
    if (indexPath.row == 10){
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"http://www.audatex.com.mx"]];
    }
    
    if (indexPath.row == 11)
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"http://lojack.com.mx"]];

    /*
    if (indexPath.row == 10)
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"http://elasegurador.mx"]];
    
    if (indexPath.row == 11){
        
        if([deviceType isEqualToString:@"iPhone"]){
            NSString *phoneNumber = @"tel://54407831";
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:phoneNumber]];
        }
        
        else
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"http://elasegurador.mx"]];
    }*/
}

@end
