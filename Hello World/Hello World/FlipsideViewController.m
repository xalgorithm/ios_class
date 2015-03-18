//
//  FlipsideViewController.m
//  Hello World
//
//  Created by Rich Warren on 9/3/13.
//  Copyright (c) 2013 Rich Warren. All rights reserved.
//

#import "FlipsideViewController.h"

@interface FlipsideViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation FlipsideViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated
{
    self.textField.text = self.text;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

#pragma mark - Actions

- (IBAction)done:(id)sender
{
    self.text = self.textField.text;
    [self.delegate flipsideViewControllerDidFinish:self];
}

@end
