//
//  ViewController.swift
//  MACombinedTextFieldSwiftDemo
//
//  Created by Paul Napier on 26/06/2014.
//  Copyright (c) 2014 madapper. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        let username = MACombinedTextField(frame:CGRect(x:15, y:UIApplication.sharedApplication().statusBarFrame.size.height + 15, width:view.frame.size.width-30, height:40))
        username.textField.delegate = self
        username.setLabelText("Username", labelFont: UIFont(name: "Helvetica",size: 14), textFieldFont: UIFont(name: "Helvetica",size: 14))
        view.addSubview(username)
        
        let password = MACombinedTextField(frame: CGRect(x: username.frame.origin.x, y: username.frame.origin.y + username.frame.size.height + 15, width: self.view.frame.size.width-30, height: 40))
        password.label.text = "Password"
        password.textField.placeholder = "password"
        password.textField.secureTextEntry = true
        password.backgroundColor = UIColor.darkGrayColor()
        password.label.textColor = UIColor.whiteColor()
        password.setBorderColor(UIColor.redColor())
        password.layer.cornerRadius = password.frame.size.height/2
        password.textField.delegate = self
        view.addSubview(password)
    }
    
    func textFieldShouldReturn(textField:UITextField)->Bool{
        textField.resignFirstResponder()
        return true
    }

}

