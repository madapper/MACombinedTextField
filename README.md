MACombinedTextField
===================

iOS control with a combined UITextField and UIlabel. This is just a simple combined texfield that is used frequently. It incorporates a UILabel and a UITextField for an elegant look and feel.

Implementation is very simple:

<pre>
#import "MACombinedTextField.h"
</pre>

Then in the implemetation file:

<pre>
MACombinedTextField *username = [[MACombinedTextField alloc]initWithFrame:CGRectMake(15, [[UIApplication sharedApplication]statusBarFrame].size.height + 15, self.view.frame.size.width-30, 40)];
    
[username setLabelText:@"Username" withLabelFont:[UIFont fontWithName:@"Helvetica" size:14] withTextFieldFont:[UIFont fontWithName:@"Helvetica" size:14]];
    
[self.view addSubview:username];
</pre>