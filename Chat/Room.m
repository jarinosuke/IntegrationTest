//
//  Room.m
//  Chat
//
//  Created by jarinosuke on 10/5/12.
//  Copyright (c) 2012 jarinosuke. All rights reserved.
//

#import "Room.h"

@implementation Room

@synthesize title = _title;
@synthesize subtitle = _subtitle;
@synthesize createdDate = _createdDate;

- (id)initWithTitle:(NSString *)title
{
    self = [super init];
    if (self) {
        _title = title;
        _subtitle = nil;
        _createdDate = [NSDate date];
    }
    return self;
}

@end
