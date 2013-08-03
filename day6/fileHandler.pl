#!/usr/bin/perl

#====================
# How to open a file
#====================

# FILEHANDLER is a user defined word in uppercase

open(FH, "data.txt") or die("$!");         # read mode
#open(MYFILE, " < data.txt") or die("$!");  # read mode
open(TEST, "> new.txt") or die("$!");      # write mode
#open(LOG, ">> log.txt") or die("$!");      # append mode


#=====================
# How to write to file
#=====================

print TEST "new data";

select(FH);     # this will change default filehandler from STDOUT to FILE
print "data";
select(STDOUT);
close(FH);

#====================
# How to read a file
#====================
open(FH,"emp.txt") or warn("unable to open file");
while(<FH>)    # File slurping
{
  print "$_";
}

#====================
# How to close a file
#====================
close(TEST);

#========================
# Random access of a file
#========================
# seek
# tell

#============
# Binary mode
#============
# binmode();

#=======
# Dirs:- 
#=======
# opendir
# closedir
# readdir
# 
# chrdir
# rmdir
# mkdir
