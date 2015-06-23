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

- (NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array {
    
    NSMutableArray *newArray = [array mutableCopy];
    
    [newArray addObject:string];

    return newArray;
}

// Solution that uses NSCharacterSet

//- (NSUInteger)countOfStringsInAllCapsInArray:(NSArray *)array {
//    
//    NSMutableArray *stringsInAllCaps = [@[] mutableCopy];
//    
//    NSCharacterSet *lowercaseSet = [NSCharacterSet lowercaseLetterCharacterSet];
//    
//    for (NSUInteger i = 0; i < array.count; i++) {
//        NSString *currentString = array[i];
//        NSString *capitalsOnly = [currentString stringByTrimmingCharactersInSet:lowercaseSet];
//        if ([currentString isEqualToString:capitalsOnly]) {
//            [stringsInAllCaps addObject:currentString];
//        }
//    }
//    
//    return stringsInAllCaps.count;
//}

- (NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array {
    NSMutableArray *uppercaseStrings = [@[] mutableCopy];
    
    for (NSUInteger i = 0; i < array.count; i++) {
        NSString *currentString = array[i];
        NSString *upperString = [currentString uppercaseString];

        if ([currentString isEqualToString:upperString]) {
            [uppercaseStrings addObject:currentString];
        }
    }
    
    return uppercaseStrings.count;
}

- (void)removeAllObjectsFromArray:(NSMutableArray *)array {
    [array removeAllObjects];
}


@end
