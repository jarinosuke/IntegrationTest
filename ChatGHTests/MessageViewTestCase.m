//
//  MessageViewTestCase.m
//  Chat
//
//  Created by jarinosuke on 10/5/12.
//  Copyright (c) 2012 jarinosuke. All rights reserved.
//

#import "MessageViewController.h"
#import <GHUnitIOS/GHUnit.h>

@interface MessageViewTestCase : GHViewTestCase { }
@end


@implementation MessageViewTestCase

- (void)testMessageViewController {
    MessageViewController *messageViewController = [[MessageViewController alloc] initWithNibName:@"MessageViewController" bundle:nil];
    GHVerifyView(messageViewController.view);
}

@end