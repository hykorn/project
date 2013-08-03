#!/usr/bin/perl

use strict;
use warnings;

use IO::Dir;

opendir(DIR,".") or die("$!");

my $d=0;
my $f=0;

foreach (readdir(DIR))
{
  $d++ if ( -d $_);
  $f++ if ( -f $_);
}

print "Total file count = $f\n";
print "Total dir count = $d\n";

#=====================================
my $dir =  IO::Dir->new(".");
tie my %dirHash, 'IO::Dir', ".";

if (defined $dir)
{
  while(defined($_ = $dir->read))
  {
    print $_ . "\n";
  }
  foreach (keys %dirHash)
  {
    print "Current directory has ".$dirHash{$_}->size. "files\n";
  }
}
