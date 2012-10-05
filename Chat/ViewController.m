//
//  ViewController.m
//  Chat
//
//  Created by jarinosuke on 10/5/12.
//  Copyright (c) 2012 jarinosuke. All rights reserved.
//

#import "ViewController.h"
#import "SelectRoomViewController.h"

@interface ViewController () {
    IBOutlet UITextField *_usernameTextField;
    IBOutlet UITextField *_passwordTextField;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"LOG IN";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Target Action
- (IBAction)loginButtonTapped:(id)sender {
    SelectRoomViewController *selectRoomViewController = [[SelectRoomViewController alloc] initWithNibName:@"SelectRoomViewController" bundle:nil];
    [self.navigationController pushViewController:selectRoomViewController animated:YES];
}

- (IBAction)backgroundViewTapped:(id)sender {
    [_usernameTextField resignFirstResponder];
    [_passwordTextField resignFirstResponder];
}
@end
