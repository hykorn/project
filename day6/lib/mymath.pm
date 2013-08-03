package mymath;

sub add
{
  print "Add\n";
}

sub minus
{
  print "Subtract\n";
}

sub div
{
  print "Divide\n";
}

sub mul
{
  print "Multiply\n";
}

my $a = 10;  # accessible anywhere in package, but not outside package
our $b = 20; # anywhere in/out package

sub BEGIN{}  # auto executed when module is loaded

sub END{}    # auto executed when module is unloaded

1;
