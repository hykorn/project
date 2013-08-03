#!/usr/bin/perl

#=======================|
# complex datastructures|
#=======================|
# 1. ArrayOfArrays (AoA)
# ----------------------
@a = (10,20,30);
@b = (40,50,60);
@c = (70,80,90);

@res = (\@a, \@b, \@c);

#------------------
# res[0]  | Addr  | ---> @a
# res[1]  | Addr  | ---> @b
# res[2]  | Addr  | ---> @c
#------------------

# Evaluate inside {} first, then outside
print "First array: " . @{$res[0]} . "\n";

# Arrow is optional b/w 2 indices i.e.:
print "First element of first array: ".$res[0]->[0] . "\n";

# Same as above
print "First element of first array: ".$res[0][0] . "\n";

#===========================================
my $i=0;
foreach (@res)
{
  foreach (@{$_})
  {
    $_++;
    print "$_\n";
  }
}

# 2. ArrayOfHashes (AoH)
# ----------------------
#------------------
# res[0]  | Addr  | ---> %hashA
# res[1]  | Addr  | ---> %hashB
# res[2]  | Addr  | ---> %hashC
#------------------
%hashA = ('A' => 10, 'B' => 20);
%hashB = ('C' => 40, 'D' => 50);
%hashC = ('E' => 70, 'F' => 80);

@res = (\%hashA, \%hashB, \%hashC);

print "First hash: " . $res[0] . "\n";
print "First element of first hash: ".$res[0]{A} . "\n";
print "First element of first hash: ".$res[0]->{A} . "\n";
