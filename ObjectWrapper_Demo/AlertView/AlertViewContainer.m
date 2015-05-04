//
//  AlertViewContainer.m
//  ObjectWrapper_Demo
//
//  Created by Wei Han on 4/30/15.
//  Copyright (c) 2015 Wei Han. All rights reserved.
//

#import "AlertViewContainer.h"
#import "MyAlertView.h"

#if __has_feature(objc_arc)
#warning "NOTE: This file had better be compiled in MRC mode so that we should retain explicitly in it!"
#endif


@interface AlertViewContainer()<UIAlertViewDelegate, MyAlertViewDelegate>

@property (nonatomic, RETAIN) MyAlertView *alertView;
@property (nonatomic, RETAIN) NSMutableArray *extraArray;

@end

@implementation AlertViewContainer

- (instancetype)init
{
    if (self = [super init]) {
        _extraArray = [[NSMutableArray alloc] init];
    }
    return self;
}

- (instancetype)initWithTitle:(NSString *)title message:(NSString *)message delegate:(id<AlertViewContainerDelegate>)delegate cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ... NS_REQUIRES_NIL_TERMINATION
{
    if (self = [self init]) {
        _alertView = [[MyAlertView alloc] initWithTitle:title message:message delegate:self cancelButtonTitle:cancelButtonTitle otherButtonTitles:otherButtonTitles, nil];
        _alertView.lifeCycleDelegate = self;
        
        _delegate = delegate;
        
        [_extraArray addObject:title];
        [_extraArray addObject:message];
        [_extraArray addObject:cancelButtonTitle];
        [_extraArray addObject:otherButtonTitles];
        
        va_list list;
        va_start(list, otherButtonTitles);
        
        NSString *param;
        while ((param = va_arg(list, NSString*))) {
            [_extraArray addObject:param];
            [_alertView addButtonWithTitle:param];
        }
        va_end(list);
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"%s, %@", __func__, self);
    
    NSLog(@"%s, begin to clear the extraArray.", __func__);
    [_extraArray removeAllObjects], _extraArray = nil;
    RELEASE(_extraArray);
    
    DEALLOC(super);
}


- (void)show
{
    RETAINOBJ(self);    // we will release self in onAlertViewDealloc:.
    
    if (self.alertView)
    {
        [self.alertView show];
        RELEASE(self.alertView);
    }
}


#pragma mark - UIAlertViewDelegate

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    NSLog(@"%s, %@", __func__, alertView);
    if (self.delegate)
        [self.delegate alertViewContainer:self didDismissWithButtonIndex:buttonIndex];
}


#pragma mark - MyAlertViewDelegate

- (void)onAlertViewDealloc:(MyAlertView *)alertView
{
    RELEASE(self);
}

@end
