//
//  FlipsideViewController.h
//  Hello World
//
//  Created by Rich Warren on 9/3/13.
//  Copyright (c) 2013 Rich Warren. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FlipsideViewController;

@protocol FlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller;
@end

@interface FlipsideViewController : UIViewController

@property (weak, nonatomic) id <FlipsideViewControllerDelegate> delegate;
@property (strong, nonatomic) NSString *text;

- (IBAction)done:(id)sender;

@end
