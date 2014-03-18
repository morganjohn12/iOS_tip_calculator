//
//  ViewController.m
//  tip_calc
//
//  Created by John Morgan on 3/1/14.
//  Copyright (c) 2014 John Morgan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize dinner_amount, tip_amount, total;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


double tip_percent = .10;
- (IBAction)tip_percent_changed:(UISegmentedControl * )sender {
    int index = sender.selectedSegmentIndex;
    
    if (index == 0) {
        tip_percent = .10;
    }
    else if (index == 1) {
        tip_percent = .15;
    }
    else if (index == 2) {
        tip_percent = .2;
    }
}

- (IBAction)calc_tip:(id)sender {
    NSString *input = dinner_amount.text;
    double tip;
    double dinner;
    double tot;
    
    [dinner_amount resignFirstResponder];
    
    
    dinner = [input doubleValue];
    tip = dinner * tip_percent;
    tot = dinner + tip;
    
    tip_amount.text = [NSString stringWithFormat:@"%.2f", tip];
    total.text = [NSString stringWithFormat:@"%.2f", tot];
    
}
@end
