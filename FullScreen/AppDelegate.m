//
//  AppDelegate.m
//  FullScreen
//
//  Created by dk on 2014. 9. 24..
//  Copyright (c) 2014년 dk. All rights reserved.
//

#import "AppDelegate.h"
#import "FullScreenWindow.h"

@implementation AppDelegate

-(void)awakeFromNib
{
    [NSMenu setMenuBarVisible:NO];
    NSRect mainDisplayRect = [[NSScreen mainScreen] frame];
//    NSRect mainDisplayRect = NSMakeRect(500, 500, 200, 200);

    fullScreenWindow = [[FullScreenWindow alloc] initWithContentRect:mainDisplayRect
                                                           styleMask:NSBorderlessWindowMask
                                                             backing:NSBackingStoreBuffered
                                                               defer:YES];
    /*
    fullScreenWindow = [[NSWindow alloc] initWithContentRect:mainDisplayRect
                                                   styleMask:NSTitledWindowMask | NSClosableWindowMask | NSMiniaturizableWindowMask | NSResizableWindowMask
                                                     backing:NSBackingStoreBuffered
                                                       defer:YES];
     */


    [fullScreenWindow setBackgroundColor:[NSColor blueColor]];
//    [fullScreenWindow setLevel:NSMainMenuWindowLevel+1];
//    [fullScreenWindow setOpaque:YES];
//    [fullScreenWindow setHidesOnDeactivate:NO];
    [fullScreenWindow makeKeyAndOrderFront:nil];
//    [[NSRunningApplication currentApplication] activateWithOptions:(NSApplicationActivateAllWindows | NSApplicationActivateIgnoringOtherApps)];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification
{
    // Insert code here to tear down your application
}

- (IBAction)test:(id)sender
{
    NSLog(@"%@", [[NSApplication sharedApplication] mainWindow]);
}

@end
