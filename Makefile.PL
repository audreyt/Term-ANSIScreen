#!/usr/bin/env perl
# $File: //member/autrijus/Term-ANSIScreen/Makefile.PL $ $Author: autrijus $
# $Revision: #4 $ $Change: 10160 $ $DateTime: 2004/02/20 16:08:52 $

require 5.001;
use inc::Module::Install;

name	    ('Term-ANSIScreen');
version_from('lib/Term/ANSIScreen.pm');
author	    ('Autrijus Tang <autrijus@autrijus.org>');
abstract    ('Terminal control using ANSI escape sequences');
license	    ('perl');

WriteAll( sign => 1 );
