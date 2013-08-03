#!/usr/bin/perl

# Write a prog to accept a dob of user in the format
print "Enter day of birth: ";
$day=<STDIN>; #in numbers
print "Enter month of birth: ";
$mon=<STDIN>; #in numbers
print "Enter year of birth: ";
$year=<STDIN>; #in numbers

#($sec,$min,$hour,$mday,$month,$year,$wday,$yday,$isdst) = localtime(time);
($mday,$month) = (localtime(time))[3,4];

$currday = $mday;
$currmonth = $month+1;

if(($currday == $day) && ($currmonth == $mon)) {
  print "Happy Birthday!\n";
} elsif($currmonth > $mon) {
  print "Happy Belated Birthday!\n";
} elsif($currmonth < $mon) {
  print "Happy Advanced Birthday!\n";
} 
  
  
