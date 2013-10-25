//
//  AseguradorIAPHelper.m
//  ElAseguradoNS
//
//  Created by Fayer on 2/13/13.
//  Copyright (c) 2013 HaiKuStudio. All rights reserved.
//

#import "AseguradorIAPHelper.h"

@implementation AseguradorIAPHelper

+ (AseguradorIAPHelper *)sharedInstance {
    static dispatch_once_t once;
    static AseguradorIAPHelper * sharedInstance;
    dispatch_once(&once, ^{
        NSSet * productIdentifiers = [NSSet setWithObjects:
                                      @"in.haikustudio.elaseguradorns.2013marzoq1",
                                      @"in.haikustudio.elaseguradorns.2013marzoq2",
                                      @"in.haikustudio.elaseguradorns.2013marzocombo",
                                      @"in.haikustudio.elaseguradorns.2013abrilq1",
                                      @"in.haikustudio.elaseguradorns.2013abrilq2",
                                      @"in.haikustudio.elaseguradorns.2013abrilcombo",
                                      @"in.haikustudio.elaseguradorns.2013mayoq1",
                                      @"in.haikustudio.elaseguradorns.2013mayoq2",
                                      @"in.haikustudio.elaseguradorns.2013mayocombo",
                                      @"in.haikustudio.elaseguradorns.2013junioq1",
                                      @"in.haikustudio.elaseguradorns.2013junioq2",
                                      @"in.haikustudio.elaseguradorns.2013juniocombo",
                                      @"in.haikustudio.elaseguradorns.2013julioq1",
                                      @"in.haikustudio.elaseguradorns.2013julioq2",
                                      @"in.haikustudio.elaseguradorns.2013juliocombo",
                                      @"in.haikustudio.elaseguradorns.2013agostoq1",
                                      @"in.haikustudio.elaseguradorns.2013agostoQ2",
                                      @"in.haikustudio.elaseguradorns.2013agostocombo",
                                      @"in.haikustudio.elaseguradorns.2013septiembreq1",
                                      @"in.haikustudio.elaseguradorns.2013septiembreq2",
                                      @"in.haikustudio.elaseguradorns.2013septiembrecombo",
                                      nil];
        sharedInstance = [[self alloc] initWithProductIdentifiers:productIdentifiers];
    });
    return sharedInstance;
}

@end