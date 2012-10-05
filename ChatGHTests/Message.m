//
//  Message.m
//  Chat
//
//  Created by jarinosuke on 10/5/12.
//  Copyright (c) 2012 jarinosuke. All rights reserved.
//

#import "Message.h"

@implementation Message

@synthesize fromMe = _fromMe;
@synthesize message = _message;

- (id)initWithMessage:(NSString *)message
{
    self = [super init];
    if (self) {
        
        _fromMe      = YES;
        _message     = message;
        _createdDate = [NSDate date];
        
    }
    return self;
}

@end
