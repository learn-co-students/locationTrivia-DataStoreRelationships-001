//
//  FISLocationsDataStore.h
//  locationTrivia-dataStore
//
//  Created by John Richardson on 6/27/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISLocationsDataStore : NSObject

@property (strong, nonatomic) NSMutableArray *locations;

- (instancetype)init;
+ (instancetype)sharedLocationsDataStore;

@end
