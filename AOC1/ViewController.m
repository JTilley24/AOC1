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
    UILabel *title =[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320.0f, 20.0f)];
    if(title != nil)
    {
        title.backgroundColor = [UIColor greenColor];
        title.text = @"Boyos";
        title.textAlignment = UITextAlignmentCenter;
    }
    [self.view addSubview:title];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
