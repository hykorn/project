#!/usr/bin/perl

%encodes = ('North' => 10,
            'South' => 20,
            'East'  => 30,
            'West'  => 40);

print %encodes;
print "\n";

delete($encodes{East});
print %encodes;
print "\n";

$res = exists($encodes{West});
print "$res\n";
$res = exists($encodes{East});
print "$res\n";

@res = keys(%encodes);
print "@res\n";
@res = values(%encodes);
print "@res\n";

###############################################

%emps = qw(arun sales basu purch chet accts dine fin);

print "Please enter employee name: ";
$empName = <STDIN>;
chomp $empName;

$empName = lc($empName);

if(exists($emps{$empName})) {
  print "$emps{$empName}\n";
} else {
  print "Employee $empName do not exists\n";
}

###############################################
%hash = (k1 => 10, k2 => 20);

print "k1 = ".$hash{k1}."\n";
$hash{k1} = 40;
print "k1 = ".$hash{k1}."\n";
$hash{k1}++;
print "k1 = ".$hash{k1}."\n";

# Modify 'k1' as 'kk1'
$hash{kk1} = $hash{k1};
delete($hash{k1});
print "kk1 = ".$hash{kk1}."\n";

