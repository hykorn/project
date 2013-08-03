#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper;

open(STUD, "studs.txt") or die("$!");

my $ref;
while(<STUD>)
{
  chomp;
#  my @arr=split(/ +/);
#  $ref->{$arr[0]}[0] = $arr[1];
#  $ref->{$arr[0]}[1] = $arr[2];
#  $ref->{$arr[0]}[2] = $arr[3];
#  $ref->{$arr[0]}[3] = ($ref->{$arr[0]}[0]+
#                        $ref->{$arr[0]}[1]+
#                        $ref->{$arr[0]}[2])/3;

  my ($name,$m1,$m2,$m3) = split(/ +/);
  my $tmp = $m1+$m2+$m3;
  $ref->{$name} = { mark=>[$m1,$m2,$m3], 
                    tot=>$tmp, avg=>$tmp/3};  
}
print Dumper ($ref);

my @res = sort{$ref->{$a}{avg} <=> $ref->{$b}{avg}} keys(%$ref);

foreach (@res)
{
  print "$_ @{$ref->{$_}{mark}} $ref->{$_}{tot} $ref->{$_}{avg}\n"
}

#print "Max Average Score is by $

close(STUD);
