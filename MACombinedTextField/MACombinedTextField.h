//
//  WASCustomTextField.h
//  MumsPlayground
//
//  Created by MadApper on 23/06/2013.
//  Copyright (c) 2013 We Are Social. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface MACombinedTextField : UIView{
    UIView *divider;
}

@property (nonatomic, retain) UILabel *label;
@property (nonatomic, retain) UITextField *textField;

-(void)setLabelText:(NSString *)text withLabelFont:(UIFont *)lfont withTextFieldFont:(UIFont *)tfont;
-(void)setBorderColor:(UIColor *)color;

@end
