#!/usr/bin/perl
# use re 'debug'   -> 5.10 and above

# when patterns are placed within round braces, 
# they are auto memorized and stored in a variable

$str = 'hello_this_45_and_this_was_65465_hellowjai 43';

$str =~ /\w+(\d\d)\w+(\d\d\d)\w+\s(\d\d)/;

# first parenthesis  - \1 or $1
# second parenthesis - \2 or $2
# third parenthesis  - \3 or $3

print "first  = $1\n";
print "second = $2\n";
print "third  = $3\n";

# ()  - it will memorize
# (?:) - it should not memorize
$str = 'hello_this_45_and_this_was_65465_hellowjai 43';
$str =~ /\w+(?:\d\d)\w+(\d\d\d)\w+\s(\d\d)/;

print "first  = $1\n";
print "second = $2\n";
print "third  = $3\n";

#========================================================
$str = 'this is a sample data';
$str =~ s/^(\w+)(\s.*\s)(\w+)$/$3$2$1/;
print "$str\n";

#========================================================
use v5.10;
$str = '10/20';

$str =~ /^(\d+)\s*([+\-x\/])\s*(\d+)$/;

given($2)
{
  when('+') { print $1+$3. "\n"; }
  when('-') { print $1-$3. "\n"; }
  when('x') { print $1*$3. "\n"; }
  when('/') { print $1/$3. "\n"; }
}

#========================================================
$str = 'this is a sample string';

# using regex reverse the last word
$str =~ s/(.*\s)(\w+)$/$1.reverse($2)/e;  # e -> use perl in built fns

print $str."\n";
