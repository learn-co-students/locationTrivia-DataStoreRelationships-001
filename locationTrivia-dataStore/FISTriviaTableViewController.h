//
//  FISTriviaTableViewController.h
//  locationTrivia-tableviews
//
//  Created by Joe Burgess on 6/20/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISAddTriviaViewController.h"
#import "FISLocation.h"

@interface FISTriviaTableViewController : UITableViewController
@property (strong, nonatomic) FISLocation *location;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *addTrivia;

@end
