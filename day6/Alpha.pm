package Alpha;

# perldoc Exporter

require Exporter;
@ISA = qw(Exporter);
#@EXPORT = qw(f1 f2);
@EXPORT_OK = qw(f1 f2);

# @EXPORT     = qw(afunc $scalar @array); -> import all symbols
# @EXPORT_OK  = qw(func %hash *typeglob); -> import only specified symbols
# %EXPORT_TAGS

sub f1
{
  print "Hello from f1\n";
  print "Hello from ".__PACKAGE__."\n";
}

sub f2
{
  print "Hello from f2\n";
  print "Hello from ".__PACKAGE__."\n";
}

sub f3
{
  print "Hello from f3\n";
  print "Hello from ".__PACKAGE__."\n";
}

sub f4
{
  print "Hello from f4\n";
  print "Hello from ".__PACKAGE__."\n";
}
