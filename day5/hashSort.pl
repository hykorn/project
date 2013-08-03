#!/usr/bin/perl

$str = 'hello world of perl is the output';

# In the above string,
# how many times is each char repeated?
# Have to display which is the most repeated char and num of times.

%alpha;

foreach (split(/ */,$str))   # excluding space from the char
{
  $alpha{$_}++;
}

@res = sort {$alpha{$a} <=> $alpha{$b}} keys(%alpha);
    # h,e,l,o,w,r,d,f,p,r,i,t...

foreach (@res)
{
  print "$_ = $alpha{$_}\n";
}
print "$res[-1] is repeated $alpha{$res[-1]} times\n";

