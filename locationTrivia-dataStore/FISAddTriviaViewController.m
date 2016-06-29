//
//  FISAddTriviaViewController.m
//  locationTrivia-dataStore
//
//  Created by John Richardson on 6/29/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISAddTriviaViewController.h"
#import "FISTrivium.h"

@interface FISAddTriviaViewController ()

@property (weak, nonatomic) IBOutlet UITextField *triviaField;
@property (weak, nonatomic) IBOutlet UIButton *saveButton;
@property (weak, nonatomic) IBOutlet UIButton *cancelButton;

@end

@implementation FISAddTriviaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.triviaField.accessibilityIdentifier = @"Trivium Text Field";
    self.triviaField.accessibilityLabel = @"Trivium Text Field";
    self.saveButton.accessibilityIdentifier = @"Save Button";
    self.saveButton.accessibilityLabel = @"Save Button";
    self.cancelButton.accessibilityIdentifier = @"Cancel Button";
    self.cancelButton.accessibilityLabel = @"Cancel Button";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)saveButtonTapped:(UIButton *)sender {
    FISTrivium *trivium = [[FISTrivium alloc] initWithContent:self.triviaField.text likes:0];
    [self.location.trivia addObject:trivium];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)cancelButtonTapped:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


@end
