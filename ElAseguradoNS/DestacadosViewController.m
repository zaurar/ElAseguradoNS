//
//  DestacadosViewController.m
//  ElAseguradoNS
//
//  Created by Fayer on 2/27/13.
//  Copyright (c) 2013 HaiKuStudio. All rights reserved.
//

#import "DestacadosViewController.h"
#import "AseguradorIAPHelper.h"
#import <StoreKit/StoreKit.h>

@interface DestacadosViewController (){
    NSUserDefaults *defaults;
    int cuartoNum;
    NSArray * meses;
    NSDictionary * cuarto;
    NSNumber *rowClicked;
    NSNumber *cuartoSeleccionado;
    
    NSArray * _products;
    SKProduct * productIAP;
    
}

@end

@implementation DestacadosViewController


- (void)viewDidLoad
{
    defaults = [NSUserDefaults standardUserDefaults];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"<"
                                                                             style:UIBarButtonItemStyleBordered
                                                                            target:nil
                                                                            action:nil];
    
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
    
    destacados.text = [cuarto objectForKey:@"noticiasDestacadas"];
    
    //IAPs
    
    _products = nil;
    [[AseguradorIAPHelper sharedInstance] requestProductsWithCompletionHandler:^(BOOL success, NSArray *products) {
        if (success) {
            _products = products;
            //SKProduct * product = (SKProduct *) _products[0];
            //NSLog(@"IAP:  %@", product.localizedTitle);
            
            productIAP = (SKProduct *) _products[1];
        }
        else{
            NSLog(@"ERROR");
        }
        
    }];
    
    
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
    
    [self actualizarBotonesCompras];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)actualizarBotonesCompras{
    switch ([rowClicked intValue]) {
        case 0: //ENERO
            comprarQ1.hidden = TRUE;
            comprarQ2.hidden = TRUE;
            comprarAmbas.hidden = TRUE;
            
            comprarAmbas.enabled = FALSE;
            comprarQ1.enabled = FALSE;
            comprarQ2.enabled = FALSE;
            
            entrarQ1.enabled = TRUE;
            entrarQ2.enabled = TRUE;
            
            entrarQ1.hidden = FALSE;
            entrarQ2.hidden = FALSE;
            break;
        case 1: //FEBRERO
            comprarQ1.hidden = TRUE;
            comprarQ2.hidden = TRUE;
            comprarAmbas.hidden = TRUE;
            
            comprarAmbas.enabled = FALSE;
            comprarQ1.enabled = FALSE;
            comprarQ2.enabled = FALSE;
            
            entrarQ1.enabled = TRUE;
            entrarQ2.enabled = TRUE;
            
            entrarQ1.hidden = FALSE;
            entrarQ2.hidden = FALSE;
            break;
        case 2: //Marzo
            
            if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013marzoq1"])
            {
                comprarQ1.hidden = TRUE;
                comprarQ1.enabled = FALSE;
                comprarAmbas.hidden = TRUE;
                comprarAmbas.enabled = FALSE;
                
                entrarQ1.hidden = FALSE;
                entrarQ1.enabled = TRUE;
            }
            
            
            
            if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013marzoq2"])
            {
                comprarQ2.hidden = TRUE;
                comprarQ2.enabled = FALSE;
                comprarAmbas.hidden = TRUE;
                comprarAmbas.enabled = FALSE;
                
                entrarQ2.hidden = FALSE;
                entrarQ2.enabled = TRUE;
            }
            
            
            
            if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013marzocombo"])
            {
                comprarQ2.hidden = TRUE;
                comprarQ2.enabled = FALSE;
                comprarAmbas.hidden = TRUE;
                comprarAmbas.enabled = FALSE;
                comprarQ1.hidden = TRUE;
                comprarQ2.enabled = FALSE;
                
                entrarQ1.hidden = FALSE;
                entrarQ1.enabled = TRUE;
                entrarQ2.hidden = FALSE;
                entrarQ2.enabled = TRUE;
            }
            
            break;
        case 3: //Abril
            
            if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013abrilq1"])
            {
                comprarQ1.hidden = TRUE;
                comprarQ1.enabled = FALSE;
                comprarAmbas.hidden = TRUE;
                comprarAmbas.enabled = FALSE;
                
                entrarQ1.hidden = FALSE;
                entrarQ1.enabled = TRUE;
            }
            
            
            if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013abrilq2"])
            {
                comprarQ2.hidden = TRUE;
                comprarQ2.enabled = FALSE;
                comprarAmbas.hidden = TRUE;
                comprarAmbas.enabled = FALSE;
                
                entrarQ2.hidden = FALSE;
                entrarQ2.enabled = TRUE;
            }
            
            
            if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013abrilcombo"])
            {
                comprarQ2.hidden = TRUE;
                comprarQ2.enabled = FALSE;
                comprarAmbas.hidden = TRUE;
                comprarAmbas.enabled = FALSE;
                comprarQ1.hidden = TRUE;
                comprarQ2.enabled = FALSE;
                
                entrarQ1.hidden = FALSE;
                entrarQ1.enabled = TRUE;
                entrarQ2.hidden = FALSE;
                entrarQ2.enabled = TRUE;
            }
            
            break;
        case 4: //MAYO
            
            if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013mayoq1"])
            {
                comprarQ1.hidden = TRUE;
                comprarQ1.enabled = FALSE;
                comprarAmbas.hidden = TRUE;
                comprarAmbas.enabled = FALSE;
                
                entrarQ1.hidden = FALSE;
                entrarQ1.enabled = TRUE;
            }
            
            
            if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013mayoq2"])
            {
                comprarQ2.hidden = TRUE;
                comprarQ2.enabled = FALSE;
                comprarAmbas.hidden = TRUE;
                comprarAmbas.enabled = FALSE;
                
                entrarQ2.hidden = FALSE;
                entrarQ2.enabled = TRUE;
            }
            
            
            if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013mayocombo"])
            {
                comprarQ2.hidden = TRUE;
                comprarQ2.enabled = FALSE;
                comprarAmbas.hidden = TRUE;
                comprarAmbas.enabled = FALSE;
                comprarQ1.hidden = TRUE;
                comprarQ2.enabled = FALSE;
                
                entrarQ1.hidden = FALSE;
                entrarQ1.enabled = TRUE;
                entrarQ2.hidden = FALSE;
                entrarQ2.enabled = TRUE;
            }
            break;
        case 5: //Junio
            
            if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013junioq1"])
            {
                comprarQ1.hidden = TRUE;
                comprarQ1.enabled = FALSE;
                comprarAmbas.hidden = TRUE;
                comprarAmbas.enabled = FALSE;
                
                entrarQ1.hidden = FALSE;
                entrarQ1.enabled = TRUE;
            }
            
            
            if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013junioq2"])
            {
                comprarQ2.hidden = TRUE;
                comprarQ2.enabled = FALSE;
                comprarAmbas.hidden = TRUE;
                comprarAmbas.enabled = FALSE;
                
                entrarQ2.hidden = FALSE;
                entrarQ2.enabled = TRUE;
            }
            
            
            if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013juniocombo"])
            {
                comprarQ2.hidden = TRUE;
                comprarQ2.enabled = FALSE;
                comprarAmbas.hidden = TRUE;
                comprarAmbas.enabled = FALSE;
                comprarQ1.hidden = TRUE;
                comprarQ2.enabled = FALSE;
                
                entrarQ1.hidden = FALSE;
                entrarQ1.enabled = TRUE;
                entrarQ2.hidden = FALSE;
                entrarQ2.enabled = TRUE;
            }
            
            break;
            
        case 6: //Julio
            
            if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013julioq1"])
            {
                comprarQ1.hidden = TRUE;
                comprarQ1.enabled = FALSE;
                comprarAmbas.hidden = TRUE;
                comprarAmbas.enabled = FALSE;
                
                entrarQ1.hidden = FALSE;
                entrarQ1.enabled = TRUE;
            }
            
            
            if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013julioq2"])
            {
                comprarQ2.hidden = TRUE;
                comprarQ2.enabled = FALSE;
                comprarAmbas.hidden = TRUE;
                comprarAmbas.enabled = FALSE;
                
                entrarQ2.hidden = FALSE;
                entrarQ2.enabled = TRUE;
            }
            
            
            if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013juliocombo"])
            {
                comprarQ2.hidden = TRUE;
                comprarQ2.enabled = FALSE;
                comprarAmbas.hidden = TRUE;
                comprarAmbas.enabled = FALSE;
                comprarQ1.hidden = TRUE;
                comprarQ2.enabled = FALSE;
                
                entrarQ1.hidden = FALSE;
                entrarQ1.enabled = TRUE;
                entrarQ2.hidden = FALSE;
                entrarQ2.enabled = TRUE;
            }
            
            break;
        case 7: //Agosto
            
            if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013agostoq1"])
            {
                comprarQ1.hidden = TRUE;
                comprarQ1.enabled = FALSE;
                comprarAmbas.hidden = TRUE;
                comprarAmbas.enabled = FALSE;
                
                entrarQ1.hidden = FALSE;
                entrarQ1.enabled = TRUE;
            }
            
            
            if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013agostoq2"])
            {
                comprarQ2.hidden = TRUE;
                comprarQ2.enabled = FALSE;
                comprarAmbas.hidden = TRUE;
                comprarAmbas.enabled = FALSE;
                
                entrarQ2.hidden = FALSE;
                entrarQ2.enabled = TRUE;
            }
            
            
            if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013agostocombo"])
            {
                comprarQ2.hidden = TRUE;
                comprarQ2.enabled = FALSE;
                comprarAmbas.hidden = TRUE;
                comprarAmbas.enabled = FALSE;
                comprarQ1.hidden = TRUE;
                comprarQ2.enabled = FALSE;
                
                entrarQ1.hidden = FALSE;
                entrarQ1.enabled = TRUE;
                entrarQ2.hidden = FALSE;
                entrarQ2.enabled = TRUE;
            }
            
            break;
        case 8: //Septiembre
        
            if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013septiembreq1"])
            {
                comprarQ1.hidden = TRUE;
                comprarQ1.enabled = FALSE;
                comprarAmbas.hidden = TRUE;
                comprarAmbas.enabled = FALSE;
            
                entrarQ1.hidden = FALSE;
                entrarQ1.enabled = TRUE;
            }
        
        
            if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013septiembreq2"])
            {
                comprarQ2.hidden = TRUE;
                comprarQ2.enabled = FALSE;
                comprarAmbas.hidden = TRUE;
                comprarAmbas.enabled = FALSE;
            
                entrarQ2.hidden = FALSE;
                entrarQ2.enabled = TRUE;
            }
        
        
            if ([[NSUserDefaults standardUserDefaults] boolForKey:@"in.haikustudio.elaseguradorns.2013septiembrecombo"])
            {
                comprarQ2.hidden = TRUE;
                comprarQ2.enabled = FALSE;
                comprarAmbas.hidden = TRUE;
                comprarAmbas.enabled = FALSE;
                comprarQ1.hidden = TRUE;
                comprarQ2.enabled = FALSE;
            
                entrarQ1.hidden = FALSE;
                entrarQ1.enabled = TRUE;
                entrarQ2.hidden = FALSE;
                entrarQ2.enabled = TRUE;
            }
        
        break;
        default:
            //NOTHING
            comprarQ1.enabled = TRUE;
            comprarQ1.hidden = FALSE;
            comprarQ2.enabled = TRUE;
            comprarQ2.hidden = FALSE;
            comprarAmbas.enabled = TRUE;
            comprarAmbas.hidden = FALSE;
            break;
    }
}

-(IBAction)changeCuarto{
    if(cuartoNum == 0)
        cuartoNum = 1;
    else
        cuartoNum = 0;
    
    [defaults setObject:[NSNumber numberWithInt:cuartoNum] forKey:@"cuartoSeleccionado"];
    cuarto = meses[[rowClicked intValue]][cuartoNum];
    destacados.text = [cuarto objectForKey:@"noticiasDestacadas"];
    [self actualizarBotonesCompras];
    
}

- (void)productPurchased:(NSNotification *)notification {
    
    NSString * productIdentifier = notification.object;
    [_products enumerateObjectsUsingBlock:^(SKProduct * product, NSUInteger idx, BOOL *stop) {
        if ([product.productIdentifier isEqualToString:productIdentifier]) {
            UIAlertView *message = [[UIAlertView alloc] initWithTitle:@"Gracias"
                                                              message:[NSString  stringWithFormat:@"Ahora ya cuentas con la edición %@.", product.localizedTitle]
                                                             delegate:nil
                                                    cancelButtonTitle:@"OK"
                                                    otherButtonTitles:nil];
            [message show];
            *stop = YES;
        }
    }];
    
    [self actualizarBotonesCompras];
    
}

- (IBAction)buyButtonQ1 {
    SKProduct *product;
    
    
    if([rowClicked intValue] == 2 ){
        //MARZO
        product = _products[13];
    }
    else if([rowClicked intValue] == 3){
        //ABRIL
        product = _products[1];
    }
    else if([rowClicked intValue] == 4){
        //MAYO
        product = _products[16];
    }
    
    else if([rowClicked intValue] == 5){
        //JUNIO
        product = _products[10];
    }
    
    else if([rowClicked intValue] == 6){
        //JULIO
        product = _products[7];
    }
    
    else if([rowClicked intValue] == 7){
        //AGOSTO
        product = _products[5];
    }
    
    else if([rowClicked intValue] == 8){
        //SEPTIEMBRE
        product = _products[19];
    }
    
    if(product == NULL){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                        message:@"Hay un error con los servidores de ventas, intente más tarde. Recuerde que para realizar compras es necesaria una conexión a internet."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    }
    
    else{
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Realizando Compra"
                                                        message:@"Su compra se está llevando a cabo. Espere un momento por favor."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        
        NSLog(@"Buying %@...", product.productIdentifier);
        [[AseguradorIAPHelper sharedInstance] buyProduct:product];
    }
    
}

- (IBAction)buyButtonQ2 {
    SKProduct *product;
    
    if([rowClicked intValue] == 2 ){
        //MARZO
        product = _products[14];
    }
    else if([rowClicked intValue] == 3){
        //ABRIL
        product = _products[2];
    }
    else if([rowClicked intValue] == 4){
        //MAYO
        product = _products[17];
    }
    
    else if([rowClicked intValue] == 5){
        //JUNIO
        product = _products[11];
    }
    
    else if([rowClicked intValue] == 6){
        //JULIO
        product = _products[8];
    }
    else if([rowClicked intValue] == 7){
        //AGOSTO
        product = _products[3];
    }
    
    else if([rowClicked intValue] == 8){
        //SEPTIEMBRE
        product = _products[20];
    }
    
    if(product == NULL){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                        message:@"Hay un error con los servidores de ventas, intente más tarde. Recuerde que para realizar compras es necesaria una conexión a internet."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    }
    
    else{
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Realizando Compra"
                                                        message:@"Su compra se está llevando a cabo. Espere un momento por favor."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        
        NSLog(@"Buying %@...", product.productIdentifier);
        [[AseguradorIAPHelper sharedInstance] buyProduct:product];
    }
}

- (IBAction)buyButtonCombo {
    SKProduct *product;
    
    if([rowClicked intValue] == 2 ){
        //MARZO
        product = _products[12];
    }
    else if([rowClicked intValue] == 3){
        //ABRIL
        product = _products[0];
    }
    else if([rowClicked intValue] == 4){
        //MAYO
        product = _products[15];
    }
    
    else if([rowClicked intValue] == 5){
        //JUNIO
        product = _products[9];
    }
    
    else if([rowClicked intValue] == 6){
        //JULIO
        product = _products[6];
    }
    else if([rowClicked intValue] == 7){
        //AGOSTO
        product = _products[4];
    }
    else if([rowClicked intValue] == 8){
        //SEPTIEMBRE
        product = _products[18];
    }
    
    if(product == NULL){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                        message:@"Hay un error con los servidores de ventas, intente más tarde. Recuerde que para realizar compras es necesaria una conexión a internet."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    }
    
    else{
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Realizando Compra"
                                                        message:@"Su compra se está llevando a cabo. Espere un momento por favor."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
        
        NSLog(@"Buying %@...", product.productIdentifier);
        [[AseguradorIAPHelper sharedInstance] buyProduct:product];
    }
}

-(IBAction)segueEntrarQ1{
    [defaults setObject:[NSNumber numberWithInt:0] forKey:@"cuartoSeleccionado"];
    [self performSegueWithIdentifier: @"segueDestacadasNoticias" sender: self];
}

-(IBAction)segueEntrarQ2{
    [defaults setObject:[NSNumber numberWithInt:1] forKey:@"cuartoSeleccionado"];
    [self performSegueWithIdentifier: @"segueDestacadasNoticias" sender: self];
}


- (void)viewWillAppear:(BOOL)animated {
    [self actualizarBotonesCompras];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(productPurchased:) name:IAPHelperProductPurchasedNotification object:nil];
}

- (void)viewWillDisappear:(BOOL)animated {
    [self actualizarBotonesCompras];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


@end
