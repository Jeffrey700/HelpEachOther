//
//  LoginViewController.h
//  Demo
//
//  Created by JunLee on 14/11/26.
//  Copyright (c) 2014年 jeffrey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *accountTextField;
@property (weak, nonatomic) IBOutlet UITextField *pswTextField;
- (IBAction)LoginAction:(id)sender;

@end
