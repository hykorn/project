#!/usr/bin/perl

# Package:-
# - is a SCOPE
# - is a collection of variables & functions
# - keyword should be first line of your Module
# - will have it's own NAMESPACE i.e. %PACKAGENAME::
#
# Module:-
# - is a collection of package/s
# - name and package name should be same
# - files extension should be .pm
# - at the END should return TRUE
#
use lib("/home/user5/day6/lib/");
use mymath;       # compile time loading (most used)
#require mymath;  # runtime loading

mymath::add();
mymath::minus();
mymath::div();
mymath::mul();

