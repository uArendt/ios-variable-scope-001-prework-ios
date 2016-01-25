//
//  FISAppDelegate.m
//  ios-variable-scope
//
//  Created by iOS Staff on 5/12/15
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "FISAppDelegate.h"

@interface FISAppDelegate ()

@end


@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    return YES;
}

-(NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array {
    NSMutableArray *copyOfArray = [NSMutableArray arrayWithArray:array];
    [copyOfArray addObject:string];
    return copyOfArray;
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array {
    NSUInteger numberOfStringsInAllCaps = 0;
    for (NSString *string in array) {
        NSString *capitalString = [string uppercaseString];
        if([string isEqualToString:capitalString]) {
            numberOfStringsInAllCaps++;
        }
    }
    return numberOfStringsInAllCaps;
}

-(void)removeAllObjectsFromArray:(NSMutableArray *)array {
    [array removeAllObjects];
}


@end
