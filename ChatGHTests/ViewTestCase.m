//
//  ViewTestCase.m
//  Chat
//
//  Created by jarinosuke on 10/5/12.
//  Copyright (c) 2012 jarinosuke. All rights reserved.
//

#import "ViewController.h"
#import <GHUnitIOS/GHUnit.h>

@interface ViewTestCase : GHViewTestCase { }
@end


@implementation ViewTestCase

- (void)testViewController {
    ViewController *viewController = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
    GHVerifyView(viewController.view);
}

@end