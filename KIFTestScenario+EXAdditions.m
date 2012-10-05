//
//  KIFTestScenario+EXAdditions.m
//  Chat
//
//  Created by jarinosuke on 10/5/12.
//  Copyright (c) 2012 jarinosuke. All rights reserved.
//

#import "KIFTestScenario+EXAdditions.h"
#import "KIFTestStep+EXAdditions.h"

@implementation KIFTestScenario (EXAdditions)

+ (id)scenarioToLogIn;
{
    KIFTestScenario *scenario = [KIFTestScenario scenarioWithDescription:@"Test that a user can successfully log in."];
    [scenario addStep:[KIFTestStep stepToReset]];
    [scenario addStep:[KIFTestStep stepToEnterText:@"user@example.com" intoViewWithAccessibilityLabel:@"username"]];
    [scenario addStep:[KIFTestStep stepToEnterText:@"thisismypassword" intoViewWithAccessibilityLabel:@"password"]];
    [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"login"]];
    
    return scenario;
}

+ (id)scenarioToSelectChat
{
    KIFTestScenario *scenario = [KIFTestScenario scenarioWithDescription:@"Test that a user can select to chat."];
    [scenario addStep:[KIFTestStep stepToReset]];
    [scenario addStep:[KIFTestStep stepToSelectPickerViewRowWithTitle:@"5 default room"]];
    [scenario addStep:[KIFTestStep stepToSelectPickerViewRowWithTitle:@"3 default room"]];
    [scenario addStep:[KIFTestStep stepToSelectPickerViewRowWithTitle:@"2 default room"]];
    [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"goroom"]];
    
    return scenario;
}

+ (id)scenarioToAddMessage
{
    KIFTestScenario *scenario = [KIFTestScenario scenarioWithDescription:@"Test that a user can add message."];
    
    for (int addCount = 0; addCount < 5; addCount++) {
        [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"addmessage"]];
    }
    
    for (int deleteCount = 0; deleteCount < 5; deleteCount++) {
        [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"deletemessage"]];
    }
    
    //    [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"editmessage"]];
    //    NSIndexPath *tapIndexPath = [NSIndexPath indexPathForRow:1 inSection:0];
    //    [scenario addStep:[KIFTestStep stepToTapRowInTableViewWithAccessibilityLabel:@"messagetableview" atIndexPath:tapIndexPath]];
    //    [scenario addStep:[KIFTestStep stepToTapScreenAtPoint:CGPointMake(10.0, 100.0)]];
    
    return scenario;
}

@end
