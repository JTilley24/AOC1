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
    [self displayAlertWithString:appended3];
    NSLog(@"%d", number3);
    NSNumber *bundled = [[NSNumber alloc] initWithInt:number3];
    NSString *stringBundled = [[NSString alloc] initWithFormat:@"The number is %@", bundled];
    [self displayAlertWithString: stringBundled];
    
    
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
    number3 = number1 + number2;
    return number3;
}
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

- (void)Append:(NSString*)appended1 appended2:(NSString*)appended2;
{
    appended3 = [[NSMutableString alloc] init];
    [appended3 appendString:[[NSMutableString alloc] initWithFormat:@"%@ %@", appended1, appended2]];
    NSLog(@"%@", appended3);
}

-(void)displayAlertWithString:(NSString*)display;
{
    UIAlertView *alertappend = [[UIAlertView alloc] initWithTitle:@"Alert!" message:display delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    if(alertappend != nil)
    {
        [alertappend show];
    }
}

@end
