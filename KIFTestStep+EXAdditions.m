//
//  KIFTestStep+EXAdditions.m
//  Chat
//
//  Created by jarinosuke on 10/5/12.
//  Copyright (c) 2012 jarinosuke. All rights reserved.
//

#import "KIFTestStep+EXAdditions.h"

@implementation KIFTestStep (EXAdditions)

+ (id)stepToReset
{
    return [KIFTestStep stepWithDescription:@"Reset the application state." executionBlock:^(KIFTestStep *step, NSError **error) {
        BOOL successfulReset = YES;
        
        // Do the actual reset for your app. Set successfulReset = NO if it fails.
        
        KIFTestCondition(successfulReset, error, @"Failed to reset the application.");
        
        return KIFTestStepResultSuccess;
    }];
}

@end
