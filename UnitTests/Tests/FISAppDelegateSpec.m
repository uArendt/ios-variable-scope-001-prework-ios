//
//  FISAppDelegateSpec.m
//  ios-variable-scope
//
//  Created by Timothy Clem on 5/12/15.
//  Copyright 2015 The Flatiron School. All rights reserved.
//

#define EXP_SHORTHAND

#import <Specta/Specta.h>
#import <Expecta/Expecta.h>
#import "FISAppDelegate.h"


SpecBegin(FISAppDelegate)

describe(@"FISAppDelegate", ^{

    __block FISAppDelegate *delegate = nil;
    
    beforeAll(^{
        delegate = (FISAppDelegate *)[UIApplication sharedApplication].delegate;
    });

    describe(@"array append method", ^{
        __block NSMutableArray *originalArray;

        beforeEach(^{
            originalArray = [@[ @"Hello", @"this", @"is" ] mutableCopy];
        });

        it(@"must not modify the original array", ^{
            [delegate arrayByAddingString:@"Patrick" toArray:originalArray];
            expect(originalArray).to.equal(@[ @"Hello", @"this", @"is" ]);
        });

        it(@"should actually return an array", ^{
            NSArray *newArray = [delegate arrayByAddingString:@"Patrick" toArray:originalArray];
            expect(newArray).to.beKindOf([NSArray class]);
        });

        it(@"should add the given string to the array", ^{
            NSArray *newArray = [delegate arrayByAddingString:@"Patrick" toArray:originalArray];
            expect(newArray).to.equal(@[ @"Hello", @"this", @"is", @"Patrick" ]);
        });
    });

    describe(@"uppercase string counting method", ^{
        it(@"should count uppercase strings", ^{
            NSUInteger count = [delegate countOfUppercaseStringsInArray:@[ @"OH", @"YES", @"WOOO" ]];
            expect(count).to.equal(3);
        });

        it(@"should ignore whitespace, numbers, and punctuation", ^{
            NSUInteger count = [delegate countOfUppercaseStringsInArray:@[ @"HELLO THERE", @", Y'ALL", @"YAH!" ]];
            expect(count).to.equal(3);
        });

        it(@"should not count lower-case or mixed-case strings", ^{
            NSUInteger count = [delegate countOfUppercaseStringsInArray:@[ @"oH No", @"what NoW", @"AAAH"]];
            expect(count).to.equal(1);
        });
        
        // Could write a test to ignore strings that consist entirely of non-alphabetical characters,
        // but that's not what this lab is really about.

    });

    describe(@"array-emptying method", ^{
        __block NSMutableArray *array;

        beforeEach(^{
            array = [@[ @1, @2, @3 ] mutableCopy];
        });

        it(@"should remove all elements from the given array", ^{
            [delegate removeAllObjectsFromArray:array];
            expect(array.count).to.equal(0);
        });

        it(@"shouldn't do anything funky with the reference", ^{
            // Probably unnecessary, but just in case someone's feeling tricky!
            NSMutableArray *originalArray = array;

            [delegate removeAllObjectsFromArray:array];
            expect(array).to.beIdenticalTo(originalArray);
        });
    });
});

SpecEnd
