//
//  RandomPickerViewController.h
//  Project 2
//
//  Created by Joshua Fisher on 7/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RandomPickerViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *guessNum;
@property (weak, nonatomic) IBOutlet UISlider *guess;
@property (weak, nonatomic) IBOutlet UILabel *congratsLabel;
@property (weak, nonatomic) IBOutlet UILabel *selection;
@property (weak, nonatomic) IBOutlet UILabel *diffLabel1;
@property (weak, nonatomic) IBOutlet UILabel *diffLabel2;
@property (weak, nonatomic) IBOutlet UIImageView *pictureBox;
- (IBAction)checkGuess;
- (IBAction)changedValue;

@end
