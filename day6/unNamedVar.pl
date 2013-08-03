#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;

# ARRAY
$ref=[10,20,30,40];  # ptr to an array

print "Address = $ref\n";
print "First element = ".$ref->[0]."\n";
print "Num elements = ".@{$ref}."\n";

#=======================================================
# HASH
$ref={a=>10,b=>20,c=>30,d=>40};          # ptr to a hash
print "Address = $ref\n";
print "First element = ".$ref->{a}."\n"; # $hash{a}
print "Num elements = ".%{$ref}."\n";    # %hash

#=======================================================

