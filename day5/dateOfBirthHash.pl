#!/usr/bin/perl

print "Enter date of birth (dd-mmm-yyyy OR dd/mmm/yyyy): ";
$inputDOB=<STDIN>;
chomp $inputDOB;
print "$inputDOB\n";

($inDay,$inMon,$inYear) = split(/-|\//,$inputDOB);
print "$inMon\n";

%hash = ('jan' => 1,
         'feb' => 2,
         'mar' => 3,
         'apr' => 4,
         'may' => 5,
         'jun' => 6,
         'jul' => 7,
         'aug' => 8,
         'sep' => 9,
         'oct' => 10,
         'nov' => 11,
         'dec' => 12);

$inMon = $hash{$inMon};

($mday,$month,$year,$wday) = (localtime(time))[3,4,5,6];

$currday = $mday;
$month = $month+1;

#print "$mday,$month,$year,$wday\n";
print "$inMon\n";



if(($mday == $inDay) && ($month == $inMon)) {
  print "Happy Birthday!\n";
} elsif($month > $inMon) {
  print "Happy Belated Birthday!\n";
} elsif($month < $inMon) {
  print "Happy Advanced Birthday!\n";
}
