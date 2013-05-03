//
//  ViewController.h
//  AOC1
//
//  Created by Justin Tilley on 4/18/13.
//  Copyright (c) 2013 Justin Tilley. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
{
    UITextField *userText;
    UILabel *notice;
    NSDate *date;
    UILabel *infoText;
}


@end
