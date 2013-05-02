//Justin Tilley
//AOC1 Project 2
//
//  ViewController.m
//  AOC1
//
//  Created by Justin Tilley on 4/18/13.
//  Copyright (c) 2013 Justin Tilley. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *userLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 95.f, 30.0f)];
    if(userLabel !=nil)
    {
        userLabel.text = @"Username:";
        [self.view addSubview:userLabel];
    }
    
    
    
    UITextField *userText = [[UITextField alloc] initWithFrame:CGRectMake(110.0f, 10.0f, 200.0f, 30.0f)];
    if(userText != nil)
    {
        userText.borderStyle =UITextBorderStyleRoundedRect;
        [self.view addSubview:userText];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
