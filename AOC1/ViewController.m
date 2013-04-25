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
    [self Append:@"Hello" appended2:@"My name is Justin"];
    UIAlertView *alertappend = [[UIAlertView alloc] initWithTitle:@"Alert!" message:appended3 delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    if(alertappend != nil)
    {
        [alertappend show];
    }
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

- (void)Append:(NSString*)appended1 appended2:(NSString*)appended2;
{
    appended3 = [[NSMutableString alloc] init];
    [appended3 appendString:[[NSMutableString alloc] initWithFormat:@"%@ %@", appended1, appended2]];
    NSLog(@"%@", appended3);
}


@end
