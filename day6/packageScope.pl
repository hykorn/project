#!/usr/bin/perl
#use lib("/home/user5/day6/lib");
#use strict;
#use warnings;

use lib::mymath;   # alternative to use lib("");

print " a = $mymath::a\n";
print " b = $mymath::b\n";

# print contents of symbol table
print join("\n", keys(%mymath::));
print "\n";

