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
    
    summary1 =[[UILabel alloc] initWithFrame:CGRectMake(0, 60.0f, 100.0f, 20.0f)];
    if(summary1 != nil)
    {
        summary1.backgroundColor = [UIColor darkGrayColor];
        summary1.text = @"Summary:";
        summary1.textAlignment = UITextAlignmentRight;
        summary1.textColor = [UIColor magentaColor];
    }
    [self.view addSubview:summary1];
    
    summary2 =[[UILabel alloc] initWithFrame:CGRectMake(0.0f, 80.0f, 320.0f, 120.0f)];
    if(summary2 != nil)
    {
        summary2.backgroundColor = [UIColor purpleColor];
        summary2.text = @"In the Projects of South Boston, the Curran brothers learn fast and hard about the life of coming up in the ranks of the mob and how it can changes a you.";
        summary2.textAlignment = UITextAlignmentCenter;
        summary2.textColor = [UIColor lightGrayColor];
        summary2.numberOfLines = 8;
    }
    [self.view addSubview:summary2];

    list1 =[[UILabel alloc] initWithFrame:CGRectMake(0, 200.0f, 100.0f, 20.0f)];
    if(list1 != nil)
    {
        list1.backgroundColor = [UIColor orangeColor];
        list1.text = @"List of Items:";
        list1.textAlignment = UITextAlignmentRight;
        list1.textColor = [UIColor brownColor];
    }
    [self.view addSubview:list1];

    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
