#!/usr/bin/perl
# $File: //member/autrijus/.vimrc $ $Author: autrijus $
# $Revision: #14 $ $Change: 4137 $ $DateTime: 2003/02/08 11:41:59 $

############################################################################
# Ensure module can be loaded
############################################################################

BEGIN { $| = 1; print "1..5\n" }
END   { print "not ok 1\n" unless $loaded }
delete $ENV{ANSI_COLORS_DISABLED};
use Term::ANSIScreen qw(:constants color colored uncolor);
$loaded = 1;
print "ok 1\n";


############################################################################
# Test suite
############################################################################

# the special 'ON' syntax.
if ((BOLD BLUE ON GREEN "testing") eq "\e[1m\e[34m\e[42mtesting") {
    print "ok 2\n";
} else {
    print "not ok 2\n";
}

if (Term::ANSIScreen->new->can('Cls')) {
    print "ok 3\n";
} else {
    print "not ok 3\n";
}

Term::ANSIScreen->import(':screen');

if (cls() eq "\e[2J") {
    print "ok 4\n";
} else {
    print "not ok 4\n";
}

if (setscroll(1, 2) eq "\e[1;2r") {
    print "ok 5\n";
} else {
    print "not ok 5\n";
}
