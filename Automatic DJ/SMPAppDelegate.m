//
//  SMPAppDelegate.m
//  Automatic DJ
//
//  Created by Steve Myers on 5/18/14.
//  Copyright (c) 2014 ___SMP_PRODUCTIONS___. All rights reserved.
//

#import "SMPAppDelegate.h"
#import "SMPAudioAnalyzerObjc.h"
#import "SMPMusicPlayer.h"

@implementation SMPAppDelegate {
    SMPMusicPlayer * player;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    player = [SMPMusicPlayer new];
}
- (void)applicationWillTerminate:(NSApplication *)application {
    player = nil;
}

- (IBAction)retrieve:(id)sender {
    NSLog(@"received a play: message");
    NSArray * files = [[NSArray alloc]initWithObjects:
                              @"/Users/Steve/Music/iTunes/iTunes Media/Music/Lords of Acid/Farstucker/01 Scrood Bi U.mp3",
                              @"/Users/Steve/Music/iTunes/iTunes Media/Music/Lords of Acid/Farstucker/02 Lover Boy _ Lover Girl.mp3",
                              @"/Users/Steve/Music/iTunes/iTunes Media/Music/Lords of Acid/Farstucker/03 Rover Take Over.mp3",
                              @"/Users/Steve/Music/iTunes/iTunes Media/Music/Lords of Acid/Farstucker/05 Slave To Love.mp3",
                              @"/Users/Steve/Music/iTunes/iTunes Media/Music/Lords of Acid/Farstucker/06 Sex Bomb.mp3",
                              @"/Users/Steve/Music/iTunes/iTunes Media/Music/Lords of Acid/Farstucker/07 Take Off.mp3",
                              @"/Users/Steve/Music/iTunes/iTunes Media/Music/Lords of Acid/Farstucker/08 Stripper.mp3",
                              @"/Users/Steve/Music/iTunes/iTunes Media/Music/Lords of Acid/Farstucker/09 Lucy's Fucking Sky.mp3",
                              @"/Users/Steve/Music/iTunes/iTunes Media/Music/Lords of Acid/Farstucker/10 (A Treatise On The Practical Methods Whereby One Can) Worship The Lords.mp3",
                              @"/Users/Steve/Music/iTunes/iTunes Media/Music/Lords of Acid/Farstucker/11 A Ride With Satans Little Helpers.mp3",
                              nil];
    [player retrieveAnalysisWithStringPaths:files];
    
}

- (IBAction)splicePoints:(id)sender {
    [player nextSplicePoints];
}
@end
