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

-(NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array
{
    NSMutableArray *arrayCopy = [NSMutableArray arrayWithArray:array];  // You could also call -mutableCopy on the array
    [arrayCopy addObject:string];
    return arrayCopy;
}

-(NSUInteger)countOfStringsInAllCapsInArray:(NSArray *)array
{
    NSUInteger allCapCount = 0;
    for(NSString *string in array) {
        // A string is uppercase if the act of uppercasing doesn't change the string
        NSString *capitalizedString = [string uppercaseString];
        if([string isEqualToString:capitalizedString]) {
            allCapCount++;
        }
    }

    return allCapCount;
}

-(void)removeAllElementsFromArray:(NSMutableArray *)array
{
    [array removeAllObjects];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {


    return YES;
}

@end
