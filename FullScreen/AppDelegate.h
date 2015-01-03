//
//  AppDelegate.h
//  FullScreen
//
//  Created by dk on 2014. 9. 24..
//  Copyright (c) 2014년 dk. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class FullScreenWindow;

@interface AppDelegate : NSObject <NSApplicationDelegate>
{
    FullScreenWindow *fullScreenWindow;
}
- (IBAction)test:(id)sender;
@end

