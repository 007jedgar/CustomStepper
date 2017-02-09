//
//  StepperViewController.m
//  CustomStepper
//
//  Created by Jonathan Edgar on 2/9/17.
//  Copyright © 2017 Jonathan Edgar. All rights reserved.
//

#import "StepperViewController.h"
#import "StepperView.h"

@interface StepperViewController ()

@end

@implementation StepperViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    StepperView *stepperBox = [[StepperView alloc]initWithFrame:CGRectMake(110, 200, 200, 50)];
    [self.view addSubview:stepperBox];
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
