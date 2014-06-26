//
//  MACombinedTextField.swift
//  MACombinedTextFieldSwiftDemo
//
//  Created by Paul Napier on 26/06/2014.
//  Copyright (c) 2014 madapper. All rights reserved.
//

import Foundation
import UIKit

class MACombinedTextField:UIView{
    
    let divider = UIView()
    let label = UILabel()
    let textField = UITextField()
    
    init(frame: CGRect) {
        super.init(frame:CGRect(x:frame.origin.x,y:frame.origin.y,width:frame.size.width,height:max(frame.size.height,40)))
        label.frame = CGRect(x:5, y:0, width:frame.size.width/5*2-5, height:0)
        label.backgroundColor = UIColor.clearColor()
        label.textColor = UIColor.lightGrayColor()
        label.userInteractionEnabled = false
        label.adjustsFontSizeToFitWidth = true
        addSubview(label)
        
        textField.frame = CGRect(x:self.label.frame.size.width+5, y:0, width:self.frame.size.width/5*3-5, height:0)
        textField.textColor = UIColor.whiteColor()
        addSubview(textField)
        
        divider.frame = CGRect(x:self.label.frame.size.width, y:5, width:1, height:frame.size.height-10)
        addSubview(divider)
        
        layer.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.1).CGColor
        layer.borderWidth = 1;
        layer.cornerRadius = 3;
        
        setLabelText("", labelFont: UIFont.systemFontOfSize(UIFont.systemFontSize()), textFieldFont: UIFont.systemFontOfSize(UIFont.systemFontSize()))
        setBorderColor(UIColor.lightGrayColor())
    }
    
    func setLabelText(text:NSString, labelFont:UIFont, textFieldFont:UIFont){
        var size = text.sizeWithAttributes([NSFontAttributeName:labelFont])
        label.frame = CGRect(x:label.frame.origin.x, y:frame.size.height/2-size.height/2, width:label.frame.size.width, height:size.height)
        label.text = text
        label.font = labelFont
        
        textField.frame = CGRect(x:textField.frame.origin.x, y:frame.size.height/2-size.height/2, width:textField.frame.size.width, height:size.height)
        textField.font = textFieldFont
    }
    
    func setBorderColor(color:UIColor){
        divider.backgroundColor = color
        layer.borderColor = color.CGColor
    }
    
}


