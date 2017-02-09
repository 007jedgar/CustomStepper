//
//  StepperView.h
//  CustomStepper
//
//  Created by Jonathan Edgar on 2/9/17.
//  Copyright © 2017 Jonathan Edgar. All rights reserved.
//

#import <UIKit/UIKit.h>
IB_DESIGNABLE

@interface StepperView : UIView

@property (nonatomic, weak) IBInspectable UIColor *colorchanger;
@property (nonatomic, assign) int count;
@end
