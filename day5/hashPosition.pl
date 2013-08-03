#!/usr/bin/perl

%hash;

#$i=1;
#foreach (a..z) {
#  $hash{$_} = $i;
#  $i++;
#}

@hash{'a'..'z'} = (1..26);

print "Please enter your name: ";
$inputName = <STDIN>;
chomp $inputName;
$inputName = lc($inputName);

$sum=0;
foreach (split(//,$inputName)) {
  print "$_ = $hash{$_}\n";
  $sum+=$hash{$_};
}

print "Sum of characters for your name = $sum\n";
