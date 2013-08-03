#!/usr/bin/perl

# - similar to "C" functions
# - there is no proto-type checking
# - arguments are viariable arguments i.e. "@arr"
# - every subroutines returns exit status of the last line

sub fun
{
  # when we pass arguments to subroutine, perl auto
  # parses function args and stores them in subroutine's lexical
  # special variable named "@_"

  print "fun function invoked.\n";
}

fun();  # you can enable prototype check (optional)
&fun;   # skips proto-type check;
&fun(); # alternative way to call function

sub add
{
  my $res = $_[0] + $_[1];
  print "$res\n";
}

my $a = 10;
my $b = 50;
add($a,$b);

#=================================================
sub fun
{
  $_[0]++;
  $_[1]++;
  print "1 = $_[0] and 2 = $_[1]\n";
}

$a = 10;
$b = 50;
fun($a,$b);
print "a = $a and b = $b\n";

sub fun2
{
  ($p,$q) = (shift,shift);
  $p++;
  $q++;
  print "p = $p and q = $q\n";
}

$a = 10;
$b = 50;
fun2($a,$b);
print "a = $a and b = $b\n";
#=================================================
