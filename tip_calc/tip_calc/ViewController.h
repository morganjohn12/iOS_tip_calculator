//
//  ViewController.h
//  tip_calc
//
//  Created by John Morgan on 3/1/14.
//  Copyright (c) 2014 John Morgan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *dinner_amount;
@property (weak, nonatomic) IBOutlet UILabel *tip_amount;
@property (weak, nonatomic) IBOutlet UILabel *total;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tip_percent;
- (IBAction)tip_percent_changed:(id)sender;

- (IBAction)calc_tip:(id)sender;

@end
