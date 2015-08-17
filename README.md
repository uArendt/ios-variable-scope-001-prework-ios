# Variable Scope: Lab

## Objectives

1. Use method arguments to pass values to a separate scope.
2. Write loops and conditionals with an awareness of scope.
3. Understand how variables go into and out of scope.

## Instructions

In this lab we're going to get some more practice writing code, but through the lens of scope. You'll have to navigate writing some methods that use loops and conditionals with the limitations of scope in mind.

1. Open the `*.xcworkspace` file and navigate to the `FISAppDelegate.h` header file. The method names have already been declared for you. Review them to gather their needed arguments, supplied returns, and intended function based upon their names. Read the tests to calibrate your thinking to some of the problems you might encounter. When you're ready, navigate to the `FISAppDelegate.m` implementation file to define the methods.

2. Write the method body for `arrayByAddingString:toArray:` which takes a mutable array and a string as arguments. Have it return the array with the string added to it. However, in this challenge you *must not modify* the original array—as in, you'll need some way to create a *copy* of the argument array.

3. Write the method body for `countOfUppercaseStringsInArray:` which takes an array as an argument and returns an unsigned integer of the count of the strings in the array that are all uppercase. You’ll need to use a `for` loop to iterate over the array, but think about how the scope will work so that your count variable is available to be returned at the end of the method. Don't forget to read the tests, especially for this method!

4. Write the method body for `removeAllObjectsFromArray:`. This method should empty the argument array of its objects. Note how this method doesn't return anything; the passed array should be modified in-place.
