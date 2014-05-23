//
//  AudioAnalyzerObjc.h
//  Automatic DJ
//
//  Created by Steve Myers on 5/20/14.
//  Copyright (c) 2014 ___SMP_PRODUCTIONS___. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SMPAudioAnalyzerObjc : NSObject
-(void)retrieveWithStringPaths:(NSArray *)files;
-(void)nextSplicePointWithTimeBeforeEndOfFirstSong:(float)timeEnd timeAfterBeginningOfNextSong:(float)timeBegin returnedFirstSongValue:(float *)returnedFirst returnedSecondSongValue:(float *)returnedSecond;
@end
