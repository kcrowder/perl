#!/usr/bin/perl
use File::Copy;
#
# by: keith crowder
# date: 04.02.2010
# purpose: automation of repeitive task -> new user access
# note: this version uses conditional statements, also, this file will print output to file
# program name: newusersys.pl
#
print "Welcome to the System Login Information for HRsmart creation tool.\n";	# making it friendly
print "please enter a username: \n";
chomp($user = <STDIN>);		# this should only be the username
print "please enter this user's password: \n";
chomp($pass = <STDIN>);		# this should only be the password
print "please enter this user's email address: \n";
chomp($email = <STDIN>);	# this should only be the email address
print "please direct manager email address: : \n";
chomp($manager = <STDIN>);	# email of manager above this user
print "please enter a filename for creating a copy of newuser.txt data: \n";
chomp($filename = <STDIN>);	# this makes it easier to log users created
###
###
print "does this user require a login for the Wiki?\n";
chomp($wiki = <STDIN>);			# input for wiki answer
#
print "how about the SOS Ticket System Login?\n";
chomp($sos = <STDIN>);			# input for sos answer
#
print "will this user require Mantis access?\n";
chomp($mantis = <STDIN>);		# input for mantis answer
#
#
print "and the Billing System?\n";
chomp($bill = <STDIN>);			# input for billing answer
#
print "and finally the Sugar/CRM?\n";
chomp($sugar = <STDIN>);		# input for sugar/crm answer
#
print "processing.....\n";		# a little humor
print "........\n";
print "\n";
###
###
open file, ">>newuser.txt" or die $!;			# open file then print data to it
	print file "\n";
	print file "Email the following to $email and $manager.\n";	# instructions
    print file "\n";
	print file "#######################\n";
	print file "\n";
    print file "Welcome to HRSmart\n";          # greeting the new user
    print file "\n";
	print file "######################################################\n";
open file, ">>newuser.txt" or die $!;
	print file "Email Login Information\n";
	print file "URL: http://mail.hrsmart.com\n";
	print file "username: $user\n";
	print file "password: $pass\n";
	print file "\n";
	print file "######################################################\n";
	print file "\n";
if ($wiki =~ /[yY]/) {					# the conditional for wiki input
open file, ">>newuser.txt" or die $!;
	print file "Wiki Login Information\n";
	print file "URL: https://maxwell.hrsmart.com\n";
	print file "username: $user\n";
	print file "password: $pass\n";
	print file "\n";
	print file "######################################################\n";
	print file "\n";
} elsif ($wiki =~ /[nN]/) {
open file, ">>newuser.txt" or die $!;
	print file "ok, Wiki not included...\n";
	print file "\n";
	print file "#######################\n";
	print file "\n";
}
###
###
if ($sos =~ /[yY]/) {					# the conditional for sos ticket input
open file, ">>newuser.txt" or die $!;
	print file "Support Online System (SOS) Login Information\n";
	print file "URL: https://tickets.hrsmart.com\n";
	print file "username: $user\n";
	print file "password: $pass\n";
	print file "\n";
	print file "#####################################################\n";
	print file "\n";
} elsif ($sos =~ /[nN]/) {
open file, ">>newuser.txt" or die $!;
	print file "ok, SOS not included...\n";
	print file "\n";
	print file "#######################\n";
	print file "\n";
}
###
###
if ($mantis =~ /[yY]/) {				# the conditional for mantis input
open file, ">>newuser.txt" or die $!;
	print file "Mantis Login Information\n";
	print file "URL:  http://mantis.hrsmart.com\n";
	print file "username: $user\n";
	print file "password: sent via seperate email\n";
	print file "\n";
	print file "######################################################\n";
	print file "\n";
} elsif ($mantis =~ /[nN]/) {				
open file, ">>newuser.txt" or die $!;
	print file "ok, Mantis not included...\n";
	print file "\n";
	print file "#######################\n";
	print file "\n";
}
###
###
if ($bill =~ /[yY]/) {					# the conditional for billing input
open file, ">>newuser.txt" or die $!;
	print file "Bill Login Information\n";
	print file "URL: http://billing.hrsmart.com\n";
	print file "username: $user\n";
	print file "password: $pass\n";
	print file "\n";
	print file "######################################################\n";
	print file "\n";
} elsif ($bill =~ /[nN]/) {
open file, ">>newuser.txt" or die $!;
	print file "ok, Billing not included...\n";
	print file "\n";
	print file "#######################\n";
	print file "\n";
}
###
###
if ($sugar =~ /[yY]/) {
open file, ">>newuser.txt" or die $!;
	print file "Sugar CRM Login Information\n";
	print file "URL:  https://crm.hrsmart.com\n";
	print file "your email address will be your login name\n";
	print file "email address: $email\n";	# in this instance, the username is the the email address
	print file "password: $pass\n";
	print file "\n";
	print file "############### more on Sugar CRM ####################\n";
	print file "\n";
	print file "At your convenience, please add yourself as a Contact in Sugar.\n";
	print file "The only required fields are Last Name and Team, but please try to fill in as much of your information as you can for our records.\n";
	print file "\n";
	print file "Login to Sugar:  https://crm.hrsmart.com\n";
	print file "\n";
	print file "Click on Contacts tab at the top of the page\n";
	print file "\n";
	print file "Click on Create Contact at the left of the page\n";
	print file "\n";
	print file "Contact Information” section:\n";
	print file "- First and last name\n";
	print file "- Contact Type: choose “HRsmart Employee\n";
	print file "- Account Name:  do not hit Select-just start typing “HRsmart, Inc.” and pick it from the pull-down list\n";
	print file "- Ignore Lead Source, Lead Source Description, and Area\n";
	print file "- Title\n";
	print file "- Department\n";
	print file "- Birthdate\n";
	print file "- Reports to-hit Select and type in your supervisor’s name and hit Search to pick him/her\n";
	print file "- Ignore Sync to Outlook and Do Not Call\n";
	print file "- Team:  this should automatically be filled in as “Global”\n";
	print file "- Assigned To-this should have been provided in the login info email sent when you first were hired (if not, just enter your supervisor’s email address from the pull-down list)\n";
	print file "- Office Phone, Mobile Phone, Home Phone, and other phone\n";
	print file "- Fax Number\n";
	print file "- Email, and Other Email (home email)\n";
	print file "- Assistant if you have one\n";
	print file "- Ignore Email Opt Out and Invalid Email\n";
	print file "\n";
	print file "Address Information Section:\n";
	print file "- Primary: work address (please enter the country too)\n";
	print file "- Other:  home address (please enter the country too)\n";
	print file "\n";
	print file "Description Section:\n";
	print file "- Please type in “Start Date” and the date your employment started\n";
	print file "\n";
	print file "Then click “Save” and log out of Sugar.\n";
	print file "\n";
} elsif ($sugar =~ /[nN]/) {
open file, ">>newuser.txt" or die $!;
	print file "ok, CRM not included\n";
	print file "\n";
	print file "#######################\n";
	print file "\n";
}
open file, ">>newuser.txt" or die $!;
print file "######################################################\n";
print file "\n";
print file "Any comments, questions, let us know, and we will be glad to assist you.\n";
print file "\n";
print "check the $filename file now.\n";
print "\n";
move("newuser.txt","$filename.txt");
###
###

#
# end of program
#
