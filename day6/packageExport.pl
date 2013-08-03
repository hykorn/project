#!/usr/bin/perl

#use Alpha;
use Alpha qw(f1 f2);
use Testcases qw(:mac);

f1();
f2();
Alpha::f3();
Alpha::f4();

print join("\n", keys(%Alpha::));
print "\n";

f1();
f2();
f3();
