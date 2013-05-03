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
        login.frame = CGRectMake(230.0f, 50.0f, 80.0f, 35.0f);
        [login setTitle:@"Login" forState:UIControlStateNormal];
        login.tag = 0;
        [login addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
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
    
    UIButton *showDate = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if(showDate != nil)
    {
        showDate.frame = CGRectMake(30.0f, 200.0f, 110.0f, 35.0f);
        [showDate setTitle:@"Show Date" forState:UIControlStateNormal];
        showDate.tag = 1;
        [showDate addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:showDate];
    }
    
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)onClick:(UIButton*)button
{
    if(button.tag == 0)
    {
        if(userText.text.length < 1)
        {
            notice.text = @"Please Enter Username";
        }
        if(userText.text.length > 1)
        {
            NSString *username = [userText text];
            NSString *noticeText = [[NSString alloc] initWithFormat:@"User: %@ has been logged in.", username];
            notice.text = noticeText;
        }
    }
    else if(button.tag == 1)
    {
        date = [NSDate date];
        NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
        if(dateFormat != nil)
        {
            [dateFormat setDateStyle:NSDateFormatterFullStyle];
            [dateFormat setTimeStyle:NSDateFormatterFullStyle];
            
            
            
        }
        NSString *dateText = [dateFormat stringFromDate:date];
        UIAlertView *dateAlert = [[UIAlertView alloc] initWithTitle:@"Date" message: @"" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil];
        dateAlert.message = dateText;
        [dateAlert show];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
