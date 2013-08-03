package Testcases;
require Exporter;
@ISA=qw(Exporter);
@EXPORT_OK = qw(f1 f2 f3 f4 f5 f6);
%EXPORT_TAGS = ('win'   => [f1,f2,f3],
                'linux' => [f1,f3,f4,f5],
                'mac'   => [f2,f3,f4,f6]
               );
# %EXPORT_TAGS = (1 => [qw/add/], 
#                 2 => [qw/minus/],
#                 3 => [qw/add minus/],
#                 4 => [qw/div mul/]);


sub f1
{
  print "F1\n";
}

sub f2
{
  print "F2\n";
}

sub f3
{
  print "F3\n";
}

sub f4
{
  print "F4\n";
}

sub f5
{
  print "F5\n";
}

sub f6
{
  print "F6\n";
}
