//
//  ViewController.m
//  identiconDemo
//
//  Created by Heng Du on 13-8-25.
//  Copyright (c) 2013年 Heng Du. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize identiconImageView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.inputTextfield setDelegate:self];
    [self.inputTextfield setText:@"123456"];
    NSString* imageURL=@"http://54.213.104.16:8080/heng%5Fidenticon/MyIdenticonServlet?c=123456&s=64";
    NSData* imageData=[NSData dataWithContentsOfURL:[NSURL URLWithString:imageURL]];
    identiconImageView.image=[UIImage imageWithData:imageData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSString* imageURL=@"http://54.213.104.16:8080/heng%5Fidenticon/MyIdenticonServlet?c=";
    imageURL=[imageURL stringByAppendingString:[textField.text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    imageURL=[imageURL stringByAppendingString:@"&s=64"];
    NSLog(@"url is: %@",imageURL);
    NSData* imageData=[NSData dataWithContentsOfURL:[NSURL URLWithString:imageURL]];
    identiconImageView.image=[UIImage imageWithData:imageData];
    NSLog(@"finished textFieldShouldReturn");
    [textField resignFirstResponder];
    return YES;
}
@end
