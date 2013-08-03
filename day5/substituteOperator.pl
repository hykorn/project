#!/usr/bin/perl

# First occurance
$str = 'This is a sample input givenit if at alif';
$str =~ s/i[snft]/CL/;
print "$str\n";

# all occurance
$str = 'This is a sample input givenit if at alif';
$str =~ s/i[snft]/CL/g;
print "$str\n";

# First occurance
$str = 'This is a sample input givenit if at alif';
$str =~ s/\bi[snft]\b/CL/gi;
print "$str\n";

# $res will have how many times it got replaced
$res = $str =~ s/\bi[snft]\b/CL/gi;
print "$res\n";
