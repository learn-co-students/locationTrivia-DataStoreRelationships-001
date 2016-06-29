//
//  FISAddLocationViewController.m
//  locationTrivia-dataStore
//
//  Created by John Richardson on 6/29/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISAddLocationViewController.h"
#import "FISLocation.h"
#import "FISLocationsDataStore.h"

@interface FISAddLocationViewController ()

@end

@implementation FISAddLocationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.nameField.accessibilityIdentifier = @"nameField";
    self.nameField.accessibilityLabel = @"nameField";
    self.latitudeField.accessibilityLabel = @"latitudeField";
    self.latitudeField.accessibilityIdentifier = @"latitudeField";
    self.longitudeField.accessibilityLabel = @"longitudeField";
    self.longitudeField.accessibilityIdentifier = @"longitudeField";
    self.saveButton.accessibilityIdentifier = @"saveButton";
    self.saveButton.accessibilityLabel = @"saveButton";
    self.cancelButton.accessibilityIdentifier = @"cancelButton";
    self.cancelButton.accessibilityLabel = @"cancelButton";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)saveButton:(id)sender {
    NSString *name = self.nameField.text;
    CGFloat latidude = (CGFloat)[self.latitudeField.text floatValue];
    CGFloat longitude = (CGFloat)[self.longitudeField.text floatValue];
    FISLocation *location = [[FISLocation alloc] initWithName:name latitude:latidude longitude:longitude];
    [[FISLocationsDataStore sharedLocationsDataStore].locations addObject:location];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)cancelButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
