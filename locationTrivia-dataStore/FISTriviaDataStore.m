//
//  FISTriviaDataStore.m
//  locationTrivia-dataStore
//
//  Created by Joshua Motley on 9/1/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "FISTriviaDataStore.h"

@implementation FISTriviaDataStore
+ (instancetype)sharedTriviaDataStore {
    static FISTriviaDataStore *_sharedTriviaDataStore = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedTriviaDataStore = [[FISTriviaDataStore alloc] init];
    });
    
    return _sharedTriviaDataStore;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _trivias = [[NSMutableArray alloc] init];
    }
    return self;
}

@end
