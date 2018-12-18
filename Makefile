# Copyright (C) 2007  Marcus Brinkmann <marcus@gnu.org>
#
# This song book is free software; you can redistribute it and/or
# modify it under the terms of the Creative Commons Legal Code
# Attribution-ShareALike as published by Creative Commons; either
# version 2.0 of the License, or (at your option) any later version.
#
# This song book is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# Creative Commons Legal Code Attribution-ShareALike for more details.
#
# You should have received a copy of the Creative Commons Legal Code
# Attribution-ShareALike along with this score sheet; if not, write to
# Creative Commons, 543 Howard Street, 5th Floor,
# San Francisco, CA 94105-3013  United States

FILES = 001 002 003 004 005 006 007 008 009 010 \
	011 012 013 014 015 016 017 018 019 020 \
        021 022 023 024 025 026 027 028 029 030 \
        031 032 033 034 035 036 037 038 039 040 \
        041 042 043 044 045 046 047 048 049 050 \
        051 052 053 054 055 056 057 058 059 060 \
        061 062 063 064 065 066 067 068 069 070 \
	071 072 073 074 075 076 077 078 079 080 \
        081 082 083 084 085 086 087 088 089 090 \
	091 092 093 094 095 096 097 098 099 100 \
	101 102 103 104 105 106 107 108 109 110 \
        111 112 113 114 115 116 117 118 119 120 \
	121 122 123 124 125a 125b		\
			    126 127 128 129 130 \
	131 132 133 134 135 136			\
	048-p1 048-p2 048-p3 048-p3b 048-p4	\
	136-p1 136-p2

all: slave-songs.pdf $(addsuffix .pdf, $(FILES))

# This rule also generates all the midi files.
%.pdf: %.ly
	lilypond $<

slave-songs.pdf: slave-songs.tex $(addsuffix .ly, $(FILES))
	rm -fR out
	mkdir -p out
	lilypond-book --output=out/ --psfonts slave-songs.tex
	(cd out; latex slave-songs.tex)
	(cd out; latex slave-songs.tex)
	(cd out; dvips -t a5 -Ppdf -h slave-songs.psfonts slave-songs.dvi)
	(cd out; ps2pdf slave-songs.ps; cp slave-songs.pdf ../slave-songs.pdf)

clean:
	rm -fr *.pdf *.ps *.midi *.dvi *~ out
