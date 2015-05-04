//
//  MainViewController.m
//  ObjectWrapper_Demo
//
//  Created by Wei Han on 4/30/15.
//  Copyright (c) 2015 Wei Han. All rights reserved.
//

#import "MainViewController.h"
#import "AlertViewContainer.h"
#import "URLConnectionContainer.h"

@interface MainViewController()<AlertViewContainerDelegate, URLConnectionContainerDelegate>

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
#if 1
    [self testEntry1];
#else
    [self testEntry2];
#endif
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    NSLog(@"%s, %@", __func__, self);
    DEALLOC(super);
}


- (void)testEntry1
{
    AlertViewContainer *alert = [[AlertViewContainer alloc] initWithTitle:@"Title" message:@"Message" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:@"1", @"2", @"3", @"4", nil];
    [alert show];
    RELEASE(alert);
}

- (void)testEntry2
{
    URLConnectionContainer *connection = [[URLConnectionContainer alloc] initWithRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.baidu.com"]] delegate:self];
    NSLog(@"URLConnectionContainer: starting...");
    [connection start];
    NSLog(@"URLConnectionContainer: finished...");
    RELEASE(connection);
}


#pragma mark - AlertViewContainerDelegate

- (void)alertViewContainer:(AlertViewContainer *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    NSLog(@"%s, %@", __func__, alertView);
}


#pragma mark - NSURLConnectionDataDelegate

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    NSLog(@"%s, %@", __func__, connection);
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    NSLog(@"%s, %@", __func__, connection);
}

- (void)connection:(NSURLConnection *)connection didSendBodyData:(NSInteger)bytesWritten
 totalBytesWritten:(NSInteger)totalBytesWritten totalBytesExpectedToWrite:(NSInteger)totalBytesExpectedToWrite
{
    NSLog(@"%s, %@", __func__, connection);
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"%s, %@", __func__, connection);
}

@end
