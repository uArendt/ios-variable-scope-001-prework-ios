# Variable Scope: Lab

## Objectives

1. Use method arguments to pass values horizontally between contexts.
2. Write loops and conditionals with an awareness of scope.
2. Pull a value out of a localized context by declaring it prior to the localization.

## Intructions

In this lab we're going to get some practice scope by working with different local contexts. In addition to passing values horizontally through method arguments, you'll have to navigate writing some loops and conditionals that localize your context further.

1. Open the `*.xcworkspace` file and navigate to the `FISAppDelegate.h` header file. The method names have already been declared for you. Review them to gather their needed arguments, supplied returns, and intended function based upon their names. Read the tests to calibrate your thinking to some of the problems you might encounter. When you're ready, navigate to the `FISAppDelegate.m` implementation file to define the methods.

2. Write the method body for `arrayByAddingString:toArray:` which takes a mutable array and a string as arguments. Have it return the array with the string added to it. However, in this challenge you *must not modify* the original array—as in, you'll need some way to create a *copy* of the argument array.

3. Write the method body for `countOfUppercaseStringsInArray:` which takes an array as an argument and returns an unsigned integer of the count of the strings in the array that are all uppercase. You’ll need to use a `for` loop to iterate over the array, but think about how the scope will work so that your count variable is available to be returned at the end of the method. Don't forget to read the tests, especially for this method!

4. Write the method body for `removeAllObjectsFromArray:`. This should return the argument array emptied of its objects. Don't just create a new array and return that—there's a test that will catch it!
