//
//  DetalleQuincenalViewController.h
//  ElAseguradoNS
//
//  Created by Fayer on 2/13/13.
//  Copyright (c) 2013 HaiKuStudio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetalleQuincenalViewController : UIViewController{
    IBOutlet UIImageView* preface;
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
-(IBAction)anuncioIzq;
-(IBAction)anuncioDer;
- (void)productPurchased:(NSNotification *)notification;


@end
