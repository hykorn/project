package mymathautoload;
use AutoLoader 'AUTOLOAD';

sub f1 { print "Hello\n"; }

sub add
{
  print "Add\n";
}

sub minus
{
  print "Subtract\n";
}
1;

__DATA__
sub div
{
  print "Divide\n";
}

sub mul
{
  print "Multiply\n";
}
