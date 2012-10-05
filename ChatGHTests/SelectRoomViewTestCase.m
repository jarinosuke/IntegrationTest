//
//  SelectRoomViewTestCase.m
//  Chat
//
//  Created by jarinosuke on 10/5/12.
//  Copyright (c) 2012 jarinosuke. All rights reserved.
//

#import "SelectRoomViewController.h"
#import <GHUnitIOS/GHUnit.h>

@interface SelectRoomViewTestCase : GHViewTestCase { }
@end


@implementation SelectRoomViewTestCase

- (void)testSelectRoomViewController {
    SelectRoomViewController *selectRoomViewController = [[SelectRoomViewController alloc] initWithNibName:@"SelectRoomViewController" bundle:nil];
    GHVerifyView(selectRoomViewController.view);
}

@end