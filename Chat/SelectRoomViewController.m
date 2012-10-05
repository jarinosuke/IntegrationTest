//
//  SelectRoomViewController.m
//  Chat
//
//  Created by jarinosuke on 10/5/12.
//  Copyright (c) 2012 jarinosuke. All rights reserved.
//

#import "SelectRoomViewController.h"
#import "MessageViewController.h"
#import "Room.h"

#define defaultRoomCount 5

@interface SelectRoomViewController () {
    IBOutlet UIPickerView *selectRoomPickerView;
    
    NSMutableArray *_rooms;
}

@end

@implementation SelectRoomViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        _rooms = [[NSMutableArray alloc] init];
        for (int roomCount = 0; roomCount < defaultRoomCount; roomCount++) {
            Room *room = [[Room alloc] initWithTitle:[NSString stringWithFormat:@"%d default room", roomCount + 1]];
            [_rooms addObject:room];
        }
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = @"Select Room";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Target action

- (IBAction)goRoomButtonTapped:(id)sender {
    MessageViewController *messageViewController = [[MessageViewController alloc] initWithNibName:@"MessageViewController" bundle:nil];
    [self.navigationController pushViewController:messageViewController animated:YES];
}

#pragma mark - UIPickerView delegate

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    return;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [(Room *)[_rooms objectAtIndex:row] title];
}

#pragma mark - UIPickerView data source

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [_rooms count];
}

@end
