#!/usr/bin/env perl
# $File: //member/autrijus/Term-ANSIScreen/Makefile.PL $ $Author: autrijus $
# $Revision: #2 $ $Change: 1134 $ $DateTime: 2002/10/02 02:00:16 $

require 5.001;
use ExtUtils::MakeMaker;

WriteMakefile (
    AUTHOR		=> 'Autrijus Tang (autrijus@autrijus.org)',
    ABSTRACT		=> 'Terminal control using ANSI escape sequences',
    NAME		=> 'Term::ANSIScreen',
    VERSION_FROM	=> 'ANSIScreen.pm',
    DISTNAME		=> 'Term-ANSIScreen',
    BINARY_LOCATION	=> 'x86/Term-ANSIScreen.tar.gz',

    dist		=> {
        COMPRESS	=> 'gzip -9',
        SUFFIX		=> '.gz',
    },
);

