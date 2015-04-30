//
//  MainViewController.m
//  ObjectWrapper_Demo
//
//  Created by Wei Han on 4/30/15.
//  Copyright (c) 2015 Wei Han. All rights reserved.
//

#import "MainViewController.h"
#import "AlertViewContainer.h"

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self testEntry];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    NSLog(@"%s, %@", __func__, self);
}


- (void)testEntry
{
    AlertViewContainer *alert = [[AlertViewContainer alloc] initWithTitle:@"Title" message:@"Message" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:@"1", @"2", @"3", @"4", nil];
    [alert show];
}

@end
