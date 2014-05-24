//
//  AudioAnalyzerObjc.m
//  Automatic DJ
//
//  Created by Steve Myers on 5/20/14.
//  Copyright (c) 2014 ___SMP_PRODUCTIONS___. All rights reserved.
//

#import "SMPAudioAnalyzerObjc.h"
#import "audioAnalyzer.h"
#import <vector>
#import <string>

@interface SMPAudioAnalyzerObjc () {
    AudioAnalyzer* analyzer;
}
@end

@implementation SMPAudioAnalyzerObjc
vector<string> generateVector(NSArray * files)
{
    vector<string> cppFiles;
    for (id file in files)
    {
        NSString * str = (NSString *) file;
        cppFiles.push_back(std::string{[str UTF8String]});
    }
    return cppFiles;
}
-(void)retrieveWithStringPaths:(NSArray *)files {
    auto cppFiles = generateVector(files);
    analyzer->retrieve(cppFiles);
}
-(void)nextSplicePointWithTimeBeforeEndOfFirstSong:(float)timeEnd timeAfterBeginningOfNextSong:(float)timeBegin returnedFirstSongValue:(float *)returnedFirst returnedSecondSongValue:(float *)returnedSecond {
    
    analyzer->nextSplicePoint(timeEnd, timeEnd, *returnedFirst, *returnedSecond);
    [self printData];
    
}
-(void)printData {
    analyzer->printData();
}
-(id)initWithStringPaths:(NSArray *)files {
    self = [super init];
    if (self) {
        auto cppFiles = generateVector(files);
        analyzer = new AudioAnalyzer{ cppFiles };
        if (!analyzer) self = nil;
    }
    return self;
}
-(id)init {
    self = [super init];
    if (self) {
        analyzer = new AudioAnalyzer{};
        if (!analyzer) self = nil;
    }
    return self;
}

-(void)dealloc {
    delete analyzer;
}
@end
