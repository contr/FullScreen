//
//  FullScreenWindow.m
//  FullScreen
//
//  Created by dk on 2014. 9. 24..
//  Copyright (c) 2014년 dk. All rights reserved.
//

#import "FullScreenWindow.h"

@implementation FullScreenWindow

- (BOOL)makeFirstResponder:(NSResponder *)aResponder
{
    BOOL result = [super makeFirstResponder:aResponder];
    return result;
}

- (BOOL)canBecomeKeyWindow
{
    return YES;
}

- (BOOL)canBecomeMainWindow
{
    return YES;
}

@end
