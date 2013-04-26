//
//  ViewController.h
//  AOC1
//
//  Created by Justin Tilley on 4/18/13.
//  Copyright (c) 2013 Justin Tilley. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    int number3;
    NSMutableString *appended3;
}

- (int)Add:(NSInteger)number1 number2:(NSInteger)number2;
- (BOOL)Compare:(NSInteger)compare1 compare2:(NSInteger)compare2;
- (void)Append:(NSString*)appended1 appended2:(NSString*)appended2;
- (void)displayAlertWithString:(NSString*)displayString;

@end
