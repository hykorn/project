#!/usr/bin/perl

# use re 'debug'   -> 5.10 and above

$str = "this is the first line,
this is the second line;
this is the third line:
this is the last line.";

print "$str\n";

# I need line starting with "t" and ending with "."
# -------------------------------------------------
# $`  => prematch
# $&  => match
# $'  => post match
# ------------------
# Note: Perfomance penalty
#       If we use these variables once, every time
#       we do regex match it will find prematch/match/postmatch

if($str =~ /^t.*\.$/m)  # use 'm' in multiline string
{
  print "Yes matched: $&\n";
}

#===============================================================
# Match java cpp c in any order of a input string
# Look-around assertion
#===============================================================
#  +ve   |  -ve   |
#------------------
# (?=  ) | (?!  ) | -> look behind assertion
# (?<= ) | (?<! ) | -> look ahead assertion
#        |        |
# (?:  ) |        | ->
# (?#  ) |        | ->
# -----------------
print "Enter a string: ";
chomp ($str=<STDIN>);

#if($str =~ /\bc\b/ && 
#   $str =~ /\bcpp\b/ && 
#   $str =~ /\bjava\nb/)

# More efficient - do not absorb every word???
if ($str =~ /(?=.*\sc\b)(?=.*\scpp\b)(?=.*\sjava\b)/)
{
  print "MATCHED\n";
}
else
{
  print "NOT MATCHED\n";
}
