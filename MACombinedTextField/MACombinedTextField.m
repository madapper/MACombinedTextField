//
//  WASCustomTextField.m
//  MumsPlayground
//
//  Created by MadApper on 23/06/2013.
//  Copyright (c) 2013 We Are Social. All rights reserved.
//

#import "MACombinedTextField.h"

@implementation MACombinedTextField

- (id)initWithFrame:(CGRect)frame
{
    frame = CGRectMake(frame.origin.x, frame.origin.y, frame.size.width, MAX(frame.size.height, 40));
    self = [super initWithFrame:frame];
    if (self) {

        self.label = [[UILabel alloc]initWithFrame:CGRectMake(5, 0, frame.size.width/5*2-5, 0)];
        self.label.backgroundColor = [UIColor clearColor];
        self.label.textColor = [UIColor lightGrayColor];
        self.label.userInteractionEnabled = false;
        self.label.adjustsFontSizeToFitWidth = true;
        [self addSubview:self.label];
        
        
        self.textField = [[UITextField alloc]initWithFrame:CGRectMake(self.label.frame.size.width+5, 0, self.frame.size.width/5*3-5, 0)];
        self.textField.textColor = [UIColor whiteColor];
        [self addSubview:self.textField];
        
        self.layer.backgroundColor = [[[UIColor whiteColor]colorWithAlphaComponent:0.1]CGColor];
        self.layer.borderColor = [[[UIColor whiteColor]colorWithAlphaComponent:0.2]CGColor];
        self.layer.borderWidth = 1;
        self.layer.cornerRadius = 3;
        
        divider = [[UIView alloc]initWithFrame:CGRectMake(self.label.frame.size.width, 5, 1, frame.size.height-10)];
        divider.backgroundColor = [[UIColor whiteColor]colorWithAlphaComponent:0.1];
        [self addSubview:divider];
        
        [self setLabelText:@"" withLabelFont:[UIFont systemFontOfSize:[UIFont systemFontSize]] withTextFieldFont:[UIFont systemFontOfSize:[UIFont systemFontSize]]];
        [self setBorderColor:[UIColor lightGrayColor]];
        
    }
    return self;
}

-(void)setLabelText:(NSString *)text withLabelFont:(UIFont *)lfont withTextFieldFont:(UIFont *)tfont{
    
    CGSize size = [text sizeWithAttributes:@{NSFontAttributeName:lfont}];
    self.label.frame = CGRectMake(self.label.frame.origin.x, self.frame.size.height/2-size.height/2, self.label.frame.size.width, size.height);
    self.label.text = text;
    self.label.font = lfont;
    
    self.textField.frame = CGRectMake(self.textField.frame.origin.x, self.frame.size.height/2-size.height/2, self.textField.frame.size.width, size.height);
    
    self.textField.font = tfont;
}

-(void)setBorderColor:(UIColor *)color{
    divider.backgroundColor = color;
    
    self.layer.borderColor = color.CGColor;
}


@end
