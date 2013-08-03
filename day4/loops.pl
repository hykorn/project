#!/usr/bin/perl
# DWIM - Do What I Mean
#
print "HELLO\n";

foreach $i (1..10) {
  print "$i ";
}
print "\n";

# without iterator 
# Implicit variable:- $_
foreach (11..20) {
  print;
  print " ";
}
print "\n";

# $ perldoc -f uc
#
foreach (11..20) {
  print "$_ ";
}
print "\n";
print "Outside loop: $_\n";  #can only accessed locally


#foreach (1..5) {
#  $_++;  # Cannot be done as it's a ptr to a constant
#  print "$_\n";
#}

# Note: If LIST made of only variables : $_ modifiable
#       If LIST made of constants      : $_ readonly
#

# If we don't pass in argument to uc/lc/length/reverse
# "$_" will be default argument
#
foreach ("one", "two", "three", "four") {
  print uc."\n";
}
