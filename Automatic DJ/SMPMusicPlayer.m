//
//  SMPMusicPlayer.m
//  Automatic DJ
//
//  Created by Steve Myers on 5/22/14.
//  Copyright (c) 2014 ___SMP_PRODUCTIONS___. All rights reserved.
//

#import "SMPMusicPlayer.h"

@implementation SMPMusicPlayer {
    SMPAudioAnalyzerObjc * analyzer;
}
-(id)init {
    if (self = [super init] ) {
        analyzer = [SMPAudioAnalyzerObjc new];
    }
    return self;
}
-(void)retrieveAnalysisWithStringPaths:(NSArray *)files
{
    [analyzer retrieveWithStringPaths:files];
}
-(void)nextSplicePoints {
    const static float TIME_IN = 10.0f;
    float first, second;
    first = second = 0.0f;
    
    [analyzer nextSplicePointWithTimeBeforeEndOfFirstSong:TIME_IN timeAfterBeginningOfNextSong:TIME_IN returnedFirstSongValue:&first returnedSecondSongValue:&second];
    
    NSLog(@"First: %f, Second: %f", first, second);
}
@end
