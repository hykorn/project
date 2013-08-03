#!/usr/bin/perl

@fromFile = <>;
%fileHash;
foreach (@fromFile) {
  chomp;
  ($lineEmpId, $lineEmpName, $lineDept, $lineSalary) = split;
  $fileHash{$lineEmpId} = "$lineEmpName,$lineDept,$lineSalary";
}

print %fileHash;
print "\n";
print $fileHash{1005};
print "\n";

print "Please enter employee ID: ";
$empId = <STDIN>;
chomp $empId;

if(exists($fileHash{$empId})) {
  ($empName, $empDept, $empSalary) = split(/,/, $fileHash{$empId});
  print "Code:   $empId\n";
  print "Name:   $empName\n";
  print "Dept:   $empDept\n";
  print "Salary: $empSalary\n";
} else {
    print "$empId does not exist\n";
    print join("\n", keys(%fileHash)) . "\n";
}



