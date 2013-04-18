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
    
    title =[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320.0f, 20.0f)];
    if(title != nil)
    {
        title.backgroundColor = [UIColor greenColor];
        title.text = @"Boyos";
        title.textAlignment = UITextAlignmentCenter;
    }
    [self.view addSubview:title];
    
    author1 =[[UILabel alloc] initWithFrame:CGRectMake(0, 20.0f, 100.0f, 20.0f)];
    if(author1 != nil)
    {
        author1.backgroundColor = [UIColor redColor];
        author1.text = @"Author:";
        author1.textAlignment = UITextAlignmentRight;
        author1.textColor = [UIColor blueColor];
    }
    [self.view addSubview:author1];
    
    author2 = [[UILabel alloc] initWithFrame:CGRectMake(100.0f, 20.0f, 220.0f, 20.0f)];
    if(author2 != nil)
    {
        author2.backgroundColor = [UIColor grayColor];
        author2.text = @"Richard Marinick";
        author2.textAlignment = UITextAlignmentLeft;
        author2.textColor = [UIColor cyanColor];
    }
    [self.view addSubview:author2];
    
    publish1 =[[UILabel alloc] initWithFrame:CGRectMake(0, 40.0f, 100.0f, 20.0f)];
    if(publish1 != nil)
    {
        publish1.backgroundColor = [UIColor yellowColor];
        publish1.text = @"Published:";
        publish1.textAlignment = UITextAlignmentRight;
        publish1.textColor = [UIColor purpleColor];
    }
    [self.view addSubview:publish1];
    
    
    publish2 =[[UILabel alloc] initWithFrame:CGRectMake(100.0f, 40.0f, 220.0f, 20.0f)];
    if(publish2 != nil)
    {
        publish2.backgroundColor = [UIColor blueColor];
        publish2.text = @"August 25, 2005";
        publish2.textAlignment = UITextAlignmentLeft;
        publish2.textColor = [UIColor orangeColor];
    }
    [self.view addSubview:publish2];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
