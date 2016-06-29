//
//  FISAddLocationViewController.h
//  locationTrivia-dataStore
//
//  Created by John Richardson on 6/29/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FISAddLocationViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *latitudeField;
@property (weak, nonatomic) IBOutlet UITextField *longitudeField;
@property (weak, nonatomic) IBOutlet UIButton *saveButton;
@property (weak, nonatomic) IBOutlet UIButton *cancelButton;

- (IBAction)saveButton:(id)sender;
- (IBAction)cancelButton:(id)sender;

@end
