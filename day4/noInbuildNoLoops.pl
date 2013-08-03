#!/usr/bin/perl

@arr = (10,20,30,40,50,60,70,80);

# Split array into 2
$len=@arr;
@arr1 = @arr[0..($len/2)-1];
@arr2 = @arr[($len/2)..$#arr];

# Reverse first part
@arr1 = reverse(@arr1);

# Map +2 to all arrays
@arr1 = map($_+2,@arr1);
@arr2 = map($_+2,@arr2);

# Merge
@arr = (@arr1,@arr2);
print "@arr\n";
