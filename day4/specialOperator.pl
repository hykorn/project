#!/usr/bin/perl
# Diamond operator
# - application 1: perl yourprogramname.pl filename
#                  diamond operator auto reads from file
#                  line by line.
# - application 2: ls | perl yourprogram.pl
#                  diamond operator auto reads from command pipe.

#while(<>) {
#  
#}

# OR
#@arr=<>;   # File slurping

#print "File slurped @arr\n";

################################################################

@exArr = <>;
print "File slurped\n @exArr\n";
$sum=0;
foreach (@exArr) {
  $sum+=(split)[-1];
}

print "Total salary =  $sum\n";
