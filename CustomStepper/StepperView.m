//
//  StepperView.m
//  CustomStepper
//
//  Created by Jonathan Edgar on 2/9/17.
//  Copyright © 2017 Jonathan Edgar. All rights reserved.
//

#import "StepperView.h"

@implementation StepperView


-(void) upButtonPressed:(id)sender {
    self.count++;
    NSLog(@"%d",self.count);
    self.stepCountLabel.text = [NSString stringWithFormat:@"%d",self.count];


}

-(void) downButtonPressed:(id)sender {
    self.count--;
    self.stepCountLabel.text = [NSString stringWithFormat:@"%d",self.count];

}

-(instancetype) initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    UIView *stepperView = [[UIView alloc]init];
    stepperView.frame = CGRectMake(0, 0, 200, 50);
    stepperView.backgroundColor = [UIColor colorWithRed:(60/255.0) green:(188/255.0) blue:(181/255.0) alpha:1.0];
   
    //stepperView.center = self.view.center;
    // [self.view addSubview:stepperView];
    
    //UIButton *stepDownButton = [[UIButton alloc]init];
    
    UIButton *stepDownButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [stepDownButton setTitle:@"-" forState:UIControlStateNormal];
    stepDownButton.frame = CGRectMake(0, 0, 40, 50);
    stepDownButton.backgroundColor = [UIColor colorWithRed:(153/255.0) green:(204/255.0) blue:(255/255.0)alpha:1.0];
    [stepDownButton addTarget:self action:@selector(downButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [stepperView addSubview:stepDownButton];
    
    UIButton *stepUpButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [stepUpButton setTitle:@"+" forState:UIControlStateNormal];
    stepUpButton. frame = CGRectMake(160,0, 40, 50);
    stepUpButton.backgroundColor = [UIColor colorWithRed:(153/255.0) green:(204/255.0) blue:(255/255.0)alpha:1.0];
    [stepUpButton addTarget:self action:@selector(upButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [stepperView addSubview:stepUpButton];
    
    self.stepCountLabel = [[UILabel alloc]init];
    self.stepCountLabel.frame = CGRectMake(85, 0, 30, 50);
    self.stepCountLabel.backgroundColor = [UIColor colorWithRed:(60/255.0) green:(188/255.0) blue:(181/255.0) alpha:1.0];
    self.stepCountLabel.textAlignment = NSTextAlignmentCenter;
    NSLog(@"%d",self.count);
    [stepperView addSubview:self.stepCountLabel];
    [self addSubview:stepperView];


    return self;

}




/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
