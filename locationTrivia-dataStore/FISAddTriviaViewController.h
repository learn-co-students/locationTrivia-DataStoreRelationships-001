//
//  FISAddTriviaViewController.h
//  locationTrivia-dataStore
//
//  Created by Joshua Motley on 9/1/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISTrivia.h"
#import "FISLocationsDataStore.h"
#import "FISLocation.h"

@interface FISAddTriviaViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *triviaTextField;
@property (strong, nonatomic) FISLocation *location;
@property (weak, nonatomic) IBOutlet UIButton *cancelButton;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;

@end
