#!/usr/bin/perl

# 3. HashOfArrays (HoA)
# -----------------------
#------------------------
# key1  | Addr  | ---> @a
# key2  | Addr  | ---> @b
# key3  | Addr  | ---> @c
#------------------------
@a = (10,20,30);
@b = (40,50,60);
@c = (23,54,87);
@d = (83,98,46);

%hash = ('north' => \@a,
         'south' => \@b,
         'east'  => \@c,
         'west'  => \@d);

print $hash{north}->[0] . "\n";
# OR
print $hash{north}[0] . "\n";

#=======================
# 4. HashOfHashes (HoH)
# ----------------------

%s1 = ('q1'=>10, 'q2'=>20, 'q3'=>30, 'q4'=>40);
%s2 = ('q1'=>11, 'q2'=>21, 'q3'=>31, 'q4'=>41);
%s3 = ('q1'=>12, 'q2'=>22, 'q3'=>32, 'q4'=>42);
%s4 = ('q1'=>13, 'q2'=>23, 'q3'=>33, 'q4'=>43);

%hash = ('north' => \%s1,
         'south' => \%s2,
         'east'  => \%s3,
         'west'  => \%s4);

print "North area Q4 sales = ".$hash{north}->{q4} . "\n";
# OR
print "North area Q4 sales = ".$hash{north}{q4} . "\n";

