//
//  Room.h
//  Chat
//
//  Created by jarinosuke on 10/5/12.
//  Copyright (c) 2012 jarinosuke. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Room : NSObject {
    NSString *_title;
    NSString *_subtitle;
    NSDate   *_createdDate;
}

@property(nonatomic, strong)NSString *title;
@property(nonatomic, strong)NSString *subtitle;
@property(nonatomic, readonly)NSDate *createdDate;

- (id)initWithTitle:(NSString *)title;

@end
