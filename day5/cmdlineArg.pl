#!/usr/bin/perl

# Perl absorbs the cmd arg and stores them in a special
# array named @ARGV

# $ perl sam.pl 10 20 30 40 50
# should give sum = ?
#
# $ perl sam.pl 10
# should give sum = ?
#
# $perl sam.pl
# Error you have to parse numbers
# Usage:
#
#     $ perl sam.pl {numbers...}

if($ARGV[-1] !~ /[0-9]/)
{
  print "Error: You have to provide the args in numbers\n";
  print "Usage: \n\t\$ perl cmdlineArg.pl \{numbers...\}\n";
  exit(0);
}

$sum = 0;
$i = 0;
foreach (@ARGV)
{
  $sum += $ARGV[$i];
  $i++;
}
print "Sum = $sum\n";
