#!/usr/bin/perl
# $File: //member/autrijus/Term-ANSIScreen/t/0-signature.t $ $Author: autrijus $
# $Revision: #1 $ $Change: 10161 $ $DateTime: 2004/02/20 16:10:09 $

use strict;
use Test::More tests => 1;

SKIP: {
    if (!eval { require Module::Signature; 1 }) {
	skip("Next time around, consider install Module::Signature, ".
	     "so you can verify the integrity of this distribution.", 1);
    }
    elsif (!eval { require Socket; Socket::inet_aton('pgp.mit.edu') }) {
	skip("Cannot connect to the keyserver", 1);
    }
    else {
	ok(Module::Signature::verify() == Module::Signature::SIGNATURE_OK()
	    => "Valid signature" );
    }
}

__END__
