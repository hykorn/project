#!/usr/bin/perl

use mymathselfload;
use SelfLoader;

# static loading & static linking
newmymath::add();
# static loading & static linking
newmymath::minus();

# dynamic loading & dynamic linking
newmymath::div();
# dynamic loading & dynamic linking
newmymath::mul();
