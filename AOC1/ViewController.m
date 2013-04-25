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
    [self Add:3 number2:4];
    [self Compare:5 compare2:4];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (int)Add:(NSInteger)number1 number2:(NSInteger)number2;
{
    int number3 = number1 + number2;
    NSLog(@"%d", number3);
    return number3;
}
- (BOOL)Compare:(NSInteger)compare1 compare2:(NSInteger)compare2;
{
    if(compare1 == compare2)
    {
        NSLog(@"Yes");
        return YES;
    }else
    {
        NSLog(@"No");
        return NO;
    }
}

@end
