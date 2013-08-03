#!/usr/bin/perl

if ($^O =~ /unix/ || $^O =~ /linux/)
{
  print "OS type = $^O\n";

  # * Non-portable

  open(FH, "ls | ");    # open pipe as read
  print <FH>;
  close FH;

  open(FH, "| bc");     # open pipe as write
  print FH "10+20\n";
  close FH;
}
else
{
  print "Unknown OS";
}
