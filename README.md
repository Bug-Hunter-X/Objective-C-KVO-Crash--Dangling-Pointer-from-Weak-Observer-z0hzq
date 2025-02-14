# Objective-C KVO Dangling Pointer Bug

This repository demonstrates a subtle bug related to Key-Value Observing (KVO) in Objective-C and how to fix it. The issue arises when a weak observer is not properly removed before the observed object is deallocated, resulting in a dangling pointer and a potential crash.

## Bug Description
The `BuggyKVO.m` file shows how failure to remove a weak KVO observer before the observed object is deallocated leads to a crash.  The fix is implemented in `FixedKVO.m`.

## How to Reproduce
1. Clone the repository.
2. Compile and run the `BuggyKVO` example. It should crash.
3. Compile and run the `FixedKVO` example. It should run without crashing.

## Solution
The solution is to always remove KVO observers in the `-dealloc` method of the observer or in any method where the observer might be deallocated before the observed object.