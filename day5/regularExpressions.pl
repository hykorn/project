# Regular Expression
# ==================
#   Basic RE    : . * {} ^ $
#   Extended RE : ? + {} ()
#
#   .  = a char other than \n
#   *  = zero/more
#   [] = group - char alteration
#   ^  = string starts-with
#   $  = string ends-with
#   ?  = zero/one
#   +  = one/more
#   {} = char repeatative operator
#   () = memorize or override the precedence
#
# ==> perldoc perlre
# ==> perldoc perlcheat

$str = "This was inside the data";

if($str =~ /\bis\b/)
{
  print "' is ' found\n";
}
elsif($str =~/is\b/)
{
  print "'XXXis ' found\n";
}

# a?     = a^n n=0/n=1
# a+     = a^n n>=1
# a*     = a^n n>=0
# a{5}   = a^n n=5
# a{3,8} = a^n n>=3<=8
# a{6,}  = a^n n>=6

$str = "carun";

if($str =~ /[vt]?arun/)
{
  print "Xarun TRUE\n";
}
else
{
  print "Xarun FALSE\n";
}
#==========================
# dd-mm-yyyy  d-m-yyyy
# dd-mm-yy    d-mm-yy
#==========================
$str2 = "07-12-1912";
if($str2 =~ /\d{1,2}-\d{1,2}-(\d\d){1,2}$/)
{
  print "Date TRUE $str2\n";
}
#==========================
print "Enter first number: ";
$inputNum1 = <STDIN>;
chomp $inputNum1;

print "Enter second number: ";
$inputNum2 = <STDIN>;
chomp $inputNum2;

if(($inputNum1 =~ /^\d+$/) &&
   ($inputNum2 =~ /^\d+$/))
{
  $sum = $inputNum1+$inputNum2;
  print "Sum is $sum\n";
}
else
{
  print "Non-number entered\n";
}

#==========================
print "Enter string to toggle case: ";
$inputStr = <STDIN>;
chomp $inputStr;

foreach (split(//,$inputStr))
{
  if(/[a-z]/) { $_ = uc($_); }
  elsif(/[A-Z]/) { $_ = lc($_); }
  print;
}
$inputStr =~ tr/[a-zA-Z]/[A-Za-z]/;
print "\n$inputStr\n";
