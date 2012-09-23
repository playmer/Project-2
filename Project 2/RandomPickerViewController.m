//
//  RandomPickerViewController.m
//  Project 2
//
//  Created by Joshua Fisher on 7/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RandomPickerViewController.h"

@interface RandomPickerViewController ()

@end

@implementation RandomPickerViewController
@synthesize guessNum;
@synthesize guess;
@synthesize congratsLabel;
@synthesize selection;
@synthesize diffLabel1;
@synthesize diffLabel2;
@synthesize pictureBox;

int numOfChecks = 1, randNum; 

- (IBAction)checkGuess
{
    int guessVal = [guess value];
    
    if (numOfChecks == 1) 
    {
        randNum = ((arc4random() % (100)) + 1);
        congratsLabel.hidden = YES;
    }
    
    if (guessVal == randNum)
    {
        diffLabel1.hidden = YES;
        diffLabel2.hidden = YES;
        pictureBox.hidden = YES;
        congratsLabel.hidden = NO;
        congratsLabel.text = [NSString stringWithFormat:@"Congratulations!\r\rYou've guessed my number of %d in %d \rtries! I've selected another number. \rTry again!", randNum, numOfChecks];
        numOfChecks = 1;
        guessNum.text = [NSString stringWithFormat:@"Guess #%d", numOfChecks];
        randNum = ((arc4random() % (100)) + 1);
    }
    
    else if (guessVal > randNum)
    {
        numOfChecks++;
        congratsLabel.hidden = YES;
        diffLabel1.hidden = NO;
        diffLabel2.hidden = NO;
        pictureBox.hidden = NO;
        guessNum.text = [NSString stringWithFormat:@"Guess #%d", numOfChecks];
        diffLabel1.text = @"My number \ris lower than\r yours!";
        diffLabel2.text = @"Try guessing a lower \rnumber.";
        pictureBox.image = [UIImage imageNamed:@"arrowDown.png"];
    }

    else if (guessVal < randNum)
    {
        numOfChecks++;
        congratsLabel.hidden = YES;
        diffLabel1.hidden = NO;
        diffLabel2.hidden = NO;
        pictureBox.hidden = NO;
        guessNum.text = [NSString stringWithFormat:@"Guess #%d", numOfChecks];
        diffLabel1.text = @"My number \ris higher than\r yours!";
        diffLabel2.text = @"Try guessing a higher \rnumber.";
        pictureBox.image = [UIImage imageNamed:@"arrowUp.png"];
    }
}

- (IBAction)changedValue
{
    int x = [guess value];
    selection.text = [NSString stringWithFormat:@"Your selection: %d", x];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setGuess:nil];
    [self setCongratsLabel:nil];
    [self setSelection:nil];
    [self setPictureBox:nil];
    [self setDiffLabel1:nil];
    [self setDiffLabel2:nil];
    [self setGuessNum:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
