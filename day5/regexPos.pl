#!/usr/bin/perl

# perldoc -f pos

$str = 'this is was a superb string to search for the put';

pos($str) = 21;  # Start from "string...."

if ($str=~/i[snft]/)
{
  print "Yes\n";
}
else
{
  print "No\n";
}
