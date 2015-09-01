//
//  FISAddTriviaViewController.m
//  locationTrivia-dataStore
//
//  Created by Joshua Motley on 9/1/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "FISAddTriviaViewController.h"


@interface FISAddTriviaViewController ()

@end

@implementation FISAddTriviaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.triviaTextField.accessibilityLabel = @"Trivium TextField";
    self.cancelButton.accessibilityLabel = @"Cancel Button";
    self.saveButton.accessibilityLabel = @"Save Button";
    // Do any additional setup after loading the view.
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
    FISTrivia *newTrivia = [[FISTrivia alloc]initWithContent:self.triviaTextField.text Likes:0];
    [self.location.trivia addObject:newTrivia];
    [self.navigationController popViewControllerAnimated:NO];
    
}

- (IBAction)cancelButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
