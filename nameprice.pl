#!/usr/bin/perl
#
# by: Keith Crowder
# date: 08-31-09
# class: ITSC-1491-7426
# WEEK II - SCALAR DATA
# note: I made an attempt to make the interface a little more interactive
#
print "Welcome to the Perl Books Store!\n";
print "Could I have your name please?\n";
	chomp($name = <STDIN>);		# name input
print "Hello $name...\n";
print "Please enter a price for the book you like: ";
	chomp($book = <STDIN>); 		# price input
print "Ok, good\n";
print "Please enter the price for your favorite magazine cost: ";
	chomp($magazine = <STDIN>); 	# price input
print "Excellent\n";
print "The book will cost \$$book, and the magazine will cost \$$magazine.\n";
$total = $book + $magazine;"\n";
print "Your grand total is \$$total \n";
print "Have a good day $name, and please come again! \n";
#
# end of program
#

