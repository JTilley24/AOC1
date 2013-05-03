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
    
    
    
    userText = [[UITextField alloc] initWithFrame:CGRectMake(110.0f, 10.0f, 200.0f, 30.0f)];
    if(userText != nil)
    {
        userText.borderStyle =UITextBorderStyleRoundedRect;
        [self.view addSubview:userText];
    }
    
    UIButton *login =  [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if(login != nil)
    {
        login.frame = CGRectMake(230.0f, 50.0f, 80.0f, 30.0f);
        [login setTitle:@"Login" forState:UIControlStateNormal];
        [login addTarget:self action:@selector(onClick) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:login];
    }
    
    notice = [[UILabel alloc] initWithFrame:CGRectMake(0, 100.0f, 320.0f, 70.0f)];
    if(notice != nil)
    {
        notice.textAlignment = UITextAlignmentCenter;
        notice.textColor = [UIColor blueColor];
        notice.backgroundColor = [UIColor grayColor];
        [self.view addSubview:notice];
    }
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)onClick
{
    if(userText.text == nil)
    {
        notice.text = @"Please Enter Username";
    }
    if(userText.text > 0)
    {
        notice.text = @"User: has been logged in";
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
