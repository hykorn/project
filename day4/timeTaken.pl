#!/usr/bin/perl

$start=time;
print "$start\n";
$i=1;

foreach(1..10) {
  sleep(1);
  $i++;
}
$end=time;
print "$end\n";

print "Time taken = ".$end-$start."\n";
  
  
