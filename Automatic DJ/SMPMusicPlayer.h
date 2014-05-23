//
//  SMPMusicPlayer.h
//  Automatic DJ
//
//  Created by Steve Myers on 5/22/14.
//  Copyright (c) 2014 ___SMP_PRODUCTIONS___. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SMPAudioAnalyzerObjc.h"

@interface SMPMusicPlayer : NSObject
{
    SMPAudioAnalyzerObjc * analyzer;
}

-(void)retrieveAnalysisWithStringPaths:(NSArray *)files;
-(void)nextSplicePoints;
@end
