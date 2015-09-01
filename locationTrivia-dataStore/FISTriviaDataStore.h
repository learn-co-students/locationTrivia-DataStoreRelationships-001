//
//  FISTriviaDataStore.h
//  locationTrivia-dataStore
//
//  Created by Joshua Motley on 9/1/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISTriviaDataStore : NSObject
@property (strong, nonatomic) NSMutableArray *trivias;
+ (instancetype)sharedTriviaDataStore;

@end
