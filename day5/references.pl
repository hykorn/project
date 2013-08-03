#!/usr/bin/perl

# perldoc perlref

$num = 10;
$ref = \$num;
print "$ref\n";
print "$$ref\n";

@arr = (10,20,30,40);
$ref = \@arr;
print "$ref\n";
print "@$ref\n";
print $ref->[0];   # $arr[0];
print "\n";

%hash = {'A' => 10,
         'B' => 20};
$ref = \%hash;
print "$ref\n";
print %$ref;
print "\n";
#print $ref->{A};  # $hash{A};

=cut
sub fun { };
$ref = \&fun;
print &$ref;
#$ref->();
print "\n";
