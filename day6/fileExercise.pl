#!/usr/bin/perl

# perldoc IO::File
# perldoc IO::Dir
# perldoc File::Basename
# perldoc File::Spec
# perldoc File::Compare

use strict;
use warnings;

open(FHONE, "one.txt");
open(FHTWO, "+> two.txt");

while(<FHONE>)
{
  chomp;
  print FHTWO reverse($_)."\n";
}
seek(FHONE, 0, 0);
seek(FHTWO, 0, 0);

while(<FHONE>)
{
  print "$_"; 
}
while(<FHTWO>)
{
  print "$_"; 
}
