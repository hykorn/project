#!/usr/bin/perl

use List::Util qw(max);

# Array:- Ordered list
# - variable starting with @
# - Size is UNLIMITED (a.k.a Greedy Arrays)
# - forward index & Negative index
# - Not like 'C' Arrays
#  -> same/diff types
#  -> doesn't store base addr (collection of references)
#

# Hash:- Unordered list

#Declare:
@nums = (10,20,30,40);

#Element:
$nums[0];
print "Element: $nums[0]\n";

#Slice:
@nums[1,2,3];
print "Slice: @nums[1,2,3]\n";

#Whole:
@nums;
print "Whole: @nums\n";

#Index of last element: $#nums
print "Last element: $nums[$#nums]\n";

# Get length of array
$len = $#nums+1;
$len2 = @nums;  # OR - #$len2 = scalar @nums;
print "array length: $len\n";
print "array length2: $len2\n";

@newArr=(2,4);
if(@newArr) {
  print("Array is initialized\n");
} else {
  print("Array not initialized\n");
}
print("===================================================\n");

print "Enter 5 numbers:\n";
foreach $i (0..4) {
  $exArr[$i]=<STDIN>;
}

$maxInArray = max @exArr;
print "Max in array = $maxInArray\n";
print("===================================================\n");
