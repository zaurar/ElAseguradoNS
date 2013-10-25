//
//  DestacadosViewController.h
//  ElAseguradoNS
//
//  Created by Fayer on 2/27/13.
//  Copyright (c) 2013 HaiKuStudio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DestacadosViewController : UIViewController{
    IBOutlet UITextView* destacados;
    IBOutlet UIButton * entrarQ1;
    IBOutlet UIButton * entrarQ2;
    IBOutlet UIButton * comprarQ1;
    IBOutlet UIButton * comprarQ2;
    IBOutlet UIButton * comprarAmbas;
    
}

-(IBAction)segueEntrarQ1;
-(IBAction)segueEntrarQ2;
-(IBAction)changeCuarto;
-(IBAction)buyButtonQ1;
-(IBAction)buyButtonQ2;
-(IBAction)buyButtonCombo;
- (void)productPurchased:(NSNotification *)notification;

@end
