//
//  SMPAppDelegate.h
//  Automatic DJ
//
//  Created by Steve Myers on 5/18/14.
//  Copyright (c) 2014 ___SMP_PRODUCTIONS___. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "SMPMusicPlayer.h"

@interface SMPAppDelegate : NSObject <NSApplicationDelegate> {
    
}

@property (assign) IBOutlet NSWindow *window;

- (IBAction)retrieve:(id)sender;
- (IBAction)splicePoints:(id)sender;

@end
