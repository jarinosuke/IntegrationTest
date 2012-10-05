//
//  MessageTestCase.m
//  Chat
//
//  Created by jarinosuke on 10/5/12.
//  Copyright (c) 2012 jarinosuke. All rights reserved.
//

#import "Message.h"
#import <GHUnitIOS/GHUnit.h>

#define testMessageDefault @"test message default"
#define testMessageChanged @"test message changed"

@interface MessageTestCase : GHTestCase {
    Message *_message;
}

@end

@implementation MessageTestCase

// Run before each test method
- (void)setUp {
    _message = [[Message alloc] initWithMessage:testMessageDefault];
}

// Run after each test method
- (void)tearDown {
    _message = nil;
}

// Run before the tests are run for this class
- (void)setUpClass {
}

// Run before the tests are run for this class
- (void)tearDownClass {
}

- (void)testFromMe {
    GHAssertTrue(_message.fromMe, @"default Message fromMe value is YES.");
    _message.fromMe = NO;
    GHAssertFalse(_message.fromMe, @"message.fromMe should be NO.");
}

- (void)testMessage {
    GHAssertTrue([_message.message isEqualToString:testMessageDefault], @"Message.message should have initialized message value.");
    _message.message = testMessageChanged;
    GHAssertTrue([_message.message isEqualToString:testMessageChanged], @"Message.message value should change when setted.");
}

- (void)testCreatedDate {
    //check createdDate value is before than now.
    NSComparisonResult result = [_message.createdDate compare:[NSDate date]];
    BOOL isCreatedBefore;
    if (result == NSOrderedAscending) {
        isCreatedBefore = YES;
    } else {
        isCreatedBefore = NO;
    }
    GHAssertTrue(isCreatedBefore, @"message.createdDate is must be before than now.");    
}

@end
