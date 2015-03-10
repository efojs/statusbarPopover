//
//  AppDelegate.m
//  EFOJSMenuletPopover
//
//  Created by prosto on 11/03/15.
//  Copyright (c) 2015 Denis Krasulin. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {

    // Adding menulet _POP_ to status bar
    self.myItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    [self.myItem setAction:@selector(showPopover:)];
    [self.myItem setTitle:@"_POP_"];
    [self.myItem setHighlightMode:YES];
    [self.myItem setTarget:self];
    [self.myItem setEnabled:YES];
}

-(void) showPopover:(id)sender {

    // Click POP to see Popover
    
    NSViewController *controller = [[NSViewController alloc] initWithNibName:@"viewController" bundle:nil];
    NSPopover *popover = [[NSPopover alloc] init];
    [popover setContentViewController:controller];
    [popover setAnimates:NO];
    [popover.contentViewController.view.window setLevel:NSPopUpMenuWindowLevel];
                                                    //    NSDockWindowLevel
                                                    //    NSFloatingWindowLevel
                                                    //    NSMainMenuWindowLevel
                                                    //    NSNormalWindowLevel
                                                    //    NSPopUpMenuWindowLevel
                                                    //    NSScreenSaverWindowLevel
                                                    //    NSStatusWindowLevel
                                                    //    NSSubmenuWindowLevel
                                                    //    NSTornOffMenuWindowLevel
    
    // Showing the Popover
    [popover showRelativeToRect:self.myItem.button.frame ofView:self.myItem.button preferredEdge:NSMaxYEdge];

    
    // Run Mission Control while Popover is open to see the problem
    // It neither moves as window nor disappears as panel
    
    
    // If you can solve it, please mail to the.efojs@gmail.com
    
    
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
