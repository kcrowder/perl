#!/usr/bin/perl
#
# by: Keith Crowder
# date: 11-11-09
# class: ITSC-1491-7426
# WEEK XI - FILE HANDLES AND FILE TEST
# program: file-test.pl
#
# Create a program that will ask the user for the file name. Perform the following:
#
# - Check to see if the file exists. If it does not display a message and end program.
# - Display the modification age
# - The read/write status of the file and directory
#
print "please enter a file name: \n";
chomp ($filename = <STDIN>);
#
if ( -e $filename) {
   print "the file indeed does exist. \n";
} else {
   print "the file does not exist, sorry :(\n";
}
#
if ( -M $filename < 1) {
   print "this file is not that old.\n";
}
#
if ( -r $filename ) {
   print "the file is readable.\n";
}
#
if ( -w $filename ) {
   print "the file is writable.\n";
}
#
# end of program
#
