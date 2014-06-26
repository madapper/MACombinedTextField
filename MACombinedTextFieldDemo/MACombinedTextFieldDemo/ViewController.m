//
//  ViewController.m
//  MACombinedTextFieldDemo
//
//  Created by Paul Napier on 26/06/2014.
//  Copyright (c) 2014 madapper. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
            

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    MACombinedTextField *username = [[MACombinedTextField alloc]initWithFrame:CGRectMake(15, [[UIApplication sharedApplication]statusBarFrame].size.height + 15, self.view.frame.size.width-30, 40)];
    username.textField.delegate = self;
    
    [username setLabelText:@"Username" withLabelFont:[UIFont fontWithName:@"Helvetica" size:14] withTextFieldFont:[UIFont fontWithName:@"Helvetica" size:14]];
    
    [self.view addSubview:username];
    
    
    
    MACombinedTextField *password = [[MACombinedTextField alloc]initWithFrame:CGRectMake(username.frame.origin.x, username.frame.origin.y + username.frame.size.height + 15, self.view.frame.size.width-30, 40)];
    password.label.text = @"Password";
    password.textField.placeholder = @"password";
    password.textField.secureTextEntry = true;
    password.backgroundColor = [UIColor darkGrayColor];
    password.label.textColor = [UIColor whiteColor];
    password.textField.textColor = [UIColor whiteColor];
    [password setBorderColor:[UIColor redColor]];
    password.layer.cornerRadius = password.frame.size.height/2;
    password.textField.delegate = self;
    [self.view addSubview:password];
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return true;
}

@end
