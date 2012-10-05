//
//  RoomTestCase.m
//  Chat
//
//  Created by jarinosuke on 10/5/12.
//  Copyright (c) 2012 jarinosuke. All rights reserved.
//

#import <GHUnitIOS/GHUnit.h>
#import "Room.h"

#define testRoomTitleDefault @"test room title default"
#define testRoomTitleChanged @"test room title changed"
#define testRoomSubTitleDefault @"test room subtitle default"
#define testRoomSubTitleChanged @"test room subtitle changed"

@interface RoomTestCase : GHTestCase {
    Room *_room;
}

@end

@implementation RoomTestCase

// Run before each test method
- (void)setUp {
    _room = [[Room alloc] initWithTitle:testRoomTitleDefault];
}

// Run after each test method
- (void)tearDown {
}

// Run before the tests are run for this class
- (void)setUpClass {
}

// Run before the tests are run for this class
- (void)tearDownClass {
}

- (void)testTitle {
    GHAssertTrue([_room.title isEqualToString:testRoomTitleDefault], @"Room.title should have initialized title value.");
    _room.title = testRoomTitleChanged;
    GHAssertTrue([_room.title isEqualToString:testRoomTitleChanged], @"Room.title value should change when setted.");
}

- (void)testSubtitle {
    GHAssertNil(_room.subtitle, @"Room.subTitle is nil when initialized.");
    _room.subtitle = testRoomSubTitleChanged;
    GHAssertTrue([_room.subtitle isEqualToString:testRoomSubTitleChanged], @"Room.subtitle value should change when setted.");
}

- (void)testCreatedDate {
    //check createdDate value is before than now.
    NSComparisonResult result = [_room.createdDate compare:[NSDate date]];
    BOOL isCreatedBefore;
    if (result == NSOrderedAscending) {
        isCreatedBefore = YES;
    } else {
        isCreatedBefore = NO;
    }
    GHAssertTrue(isCreatedBefore, @"room.createdDate is must be before than now.");
}



@end
