//
//  Message.h
//  Chat
//
//  Created by jarinosuke on 10/5/12.
//  Copyright (c) 2012 jarinosuke. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Message : NSObject {
    BOOL     _fromMe;
    NSString *_message;
}

@property(nonatomic, assign)BOOL fromMe;
@property(nonatomic, strong)NSString *message;

- (id)initWithMessage:(NSString *)message;

@end
