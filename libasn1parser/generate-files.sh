#!/bin/bash

# quick script used to generate lexer and parser
# we may put it again in the makefile, but for now let's be less intrusive as possible

flex -s -p -Cem -Pasn1p_ -oasn1p_l.c asn1p_l.l 
bison --yacc -p asn1p_ -d -o  asn1p_y.c asn1p_y.y
