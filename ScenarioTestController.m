//
//  ScenarioTestController.m
//  Chat
//
//  Created by jarinosuke on 10/5/12.
//  Copyright (c) 2012 jarinosuke. All rights reserved.
//

#import "ScenarioTestController.h"
#import "KIFTestScenario+EXAdditions.h"

@implementation ScenarioTestController

- (void)initializeScenarios;
{
    [self addScenario:[KIFTestScenario scenarioToLogIn]];
    
    [self addScenario:[KIFTestScenario scenarioToSelectChat]];
    
    [self addScenario:[KIFTestScenario scenarioToAddMessage]];
}

@end
