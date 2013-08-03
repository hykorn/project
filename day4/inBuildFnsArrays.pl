#!/usr/bin/perl

#use sort 'default';

# perldoc perlfunc
# ================
# grep - search for a regex on array
#        @res = grep(/regex/,@array);
# map - similar to foreach
#       map(function/expression,@array);
#       map($_++,@arr);
#       @arr=map($_+1,@arr);
# split - similar to strtok
# join - viceversa f split
# splice - array operations

@arr=(10,20,30,40,50);

push(@arr, 88);       # Add at END
print "@arr\n";
$res=pop(@arr);       # Del from END
print "@arr\n";
 
unshift(@arr, 99);    # Add at START
print "@arr\n";
$res=shift(@arr);     # Del from START
print "@arr\n";


# perldoc sort
# ============

#print sort::current()."\n";

@newArr = sort @arr;                  # ASCII ascending order
print "sorted1 = @newArr\n";

@newArr2 = sort {$a cmp $b} @arr;     # ASCII ascending order
print "sorted2 = @newArr2\n";

@newArr3 = sort {$b cmp $a} @arr;     # ASCII decending order
print "sorted3 = @newArr3\n";

#############################################################
@names = qw(hello world of perl);
print "@names\n";
@ucnames= map(uc,@names);
print "@ucnames\n";

#############################################################
$str='helloworld';
print "$str\n";
@strArr = join('-',split('',$str));
print "@strArr\n";

$str='54521';
@strArr = split('',$str);
print "@strArr\n";

@word=qw(zero one two three four five);
print "@word[@strArr]\n";
print "@word[split(//,$str)]\n";

