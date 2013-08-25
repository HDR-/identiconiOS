//
//  ViewController.h
//  identiconDemo
//
//  Created by Heng Du on 13-8-25.
//  Copyright (c) 2013年 Heng Du. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *inputTextfield;
@property (weak, nonatomic) IBOutlet UIImageView *identiconImageView;

@end
