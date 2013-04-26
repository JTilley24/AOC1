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
    [self Compare:4 compare2:4];
    [self Append:@"Hello" appended2:@"My name is Justin"];
    [self displayAlertWithString:appended3];
    
    //Bundle integer with NSNumber
    NSNumber *bundledNumber = [[NSNumber alloc] initWithInt:number3];
    
    //NSNumber into string
    NSString *stringBundled = [[NSString alloc] initWithFormat:@"The number is %@", bundledNumber];
    
    [self displayAlertWithString: stringBundled];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Add integer function
- (int)Add:(NSInteger)number1 number2:(NSInteger)number2;
{
    number3 = number1 + number2;
    return number3;
}

//Compare integer function
- (BOOL)Compare:(NSInteger)compare1 compare2:(NSInteger)compare2;
{
    if(compare1 == compare2)
    {
        NSString *comparedString = [[NSString alloc] initWithFormat:@"Yes, the number %d equals %d", compare1, compare2];
        [self displayAlertWithString:comparedString];
        return YES;
    }else
    {
        NSString *noCompare = [[NSString alloc] initWithFormat:@"No, the number %d does not equal %d", compare1, compare2];
        [self displayAlertWithString:noCompare];
        return NO;
    }
}

//Append two strings function
- (void)Append:(NSString*)appended1 appended2:(NSString*)appended2;
{
    appended3 = [[NSMutableString alloc] init];
    [appended3 appendString:[[NSMutableString alloc] initWithFormat:@"%@ %@", appended1, appended2]];
}

//Display Alert function
- (void)displayAlertWithString:(NSString*)displayString;
{
    UIAlertView *alertAppend = [[UIAlertView alloc] initWithTitle:@"Alert!" message:displayString delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    if(alertAppend != nil)
    {
        [alertAppend show];
    }
}

@end
