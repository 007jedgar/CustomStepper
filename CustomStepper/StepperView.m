//
//  StepperView.m
//  CustomStepper
//
//  Created by Jonathan Edgar on 2/9/17.
//  Copyright © 2017 Jonathan Edgar. All rights reserved.
//

#import "StepperView.h"

@implementation StepperView


-(void) upButtonPressed {
    self.count++;
}
-(void) downButtonPressed {
    self.count--;
}

-(instancetype) initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    UIView *stepperView = [[UIView alloc]init];
    stepperView.frame = CGRectMake(110, 200, 200, 50);
    stepperView.backgroundColor = [UIColor colorWithRed:(60/255.0) green:(188/255.0) blue:(181/255.0) alpha:1.0];
    // [self.view addSubview:stepperView];
    
    UIButton *stepDownButton = [[UIButton alloc]init];
    stepDownButton.frame = CGRectMake(10,10, 30, 30);
    stepDownButton.backgroundColor = [UIColor redColor];
    [stepDownButton addTarget:self action:@selector(downButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [stepperView addSubview:stepDownButton];
    
    UIButton *stepUpButton = [[UIButton alloc]init];
    stepUpButton. frame = CGRectMake(160,10, 30, 30);
    stepUpButton.backgroundColor = [UIColor redColor];
    [stepUpButton addTarget:self action:@selector(downButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [stepperView addSubview:stepUpButton];
    
    
    UILabel *stepCountLabel = [[UILabel alloc]init];
    stepCountLabel.frame = CGRectMake(85, 10, 30, 30);
    stepCountLabel.text = [NSString stringWithFormat:@"%d",self.count];
    stepCountLabel.backgroundColor = [UIColor lightGrayColor];
    [stepperView addSubview:stepCountLabel];
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
