#!/usr/bin/perl

use strict;
use warnings;

# AoAoH
my $ref = [[10,20],[30,40,{a=>1,b=>2}],[50,60]];

# Print value of 'a' & 'b'
print $ref->[1]->[2]->{a} . "\n";
print $ref->[1][2]{b} . "\n";   # arrow is optional between indices

# Last array
print @{$ref->[2]}."\n";
print "\n";

# HoAoH
$ref = {first=>[{a=>1,b=>},{c=>3,d=>4}],second=>[{e=>1,f=>2},{g=>3,h=>4}]};

# Value of 'b'
print $ref->{first}[0]{b} . "\n";
# all second hashes
print keys(%{$ref->{second}[0]}) . "\n";


# common error
$ref = [north=>{q1=>10,q2=>20},south=>{q1=>30,q2=>30}];
# value 20
print "$ref->[1]{q2}";

$ref={first=>[],second=>[]};

# add element into second array
push(@{$ref->{second}},10,20,30,40,50);
# OR
$ref->{second} = [10,20,30,40,50];
# OR
$ref->{second}[0] = 10;
$ref->{second}[1] = 20;
$ref->{second}[2] = 30;
$ref->{second}[3] = 40;
$ref->{second}[4] = 50;

