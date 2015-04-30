//
//  AlertViewContainer.m
//  ObjectWrapper_Demo
//
//  Created by Wei Han on 4/30/15.
//  Copyright (c) 2015 Wei Han. All rights reserved.
//

#import "AlertViewContainer.h"
#import "MyAlertView.h"

@interface AlertViewContainer()

@property (nonatomic, strong) MyAlertView *alertView;
@property (nonatomic, strong) NSMutableArray *extraArray;

@end

@implementation AlertViewContainer

- (instancetype)init
{
    if (self = [super init]) {
        _extraArray = [[NSMutableArray alloc] init];
    }
    return self;
}

- (instancetype)initWithTitle:(NSString *)title message:(NSString *)message delegate:(id /*<UIAlertViewDelegate>*/)delegate cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ... NS_REQUIRES_NIL_TERMINATION
{
    if (self = [self init]) {
        _alertView = [[MyAlertView alloc] initWithTitle:title message:message delegate:delegate cancelButtonTitle:cancelButtonTitle otherButtonTitles:otherButtonTitles, nil];
        
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
}


- (void)show
{
    if (self.alertView)
    {
        [self.alertView show];
    }
}

@end
