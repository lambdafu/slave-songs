% 117.ly - Score sheet for "Jacob's Ladder"
% Copyright (C) 2007  Marcus Brinkmann <marcus@gnu.org>
%
% This score sheet is free software; you can redistribute it and/or
% modify it under the terms of the Creative Commons Legal Code
% Attribution-ShareALike as published by Creative Commons; either
% version 2.0 of the License, or (at your option) any later version.
%
% This score sheet is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% Creative Commons Legal Code Attribution-ShareALike for more details.
%
% You should have received a copy of the Creative Commons Legal Code
% Attribution-ShareALike along with this score sheet; if not, write to
% Creative Commons, 543 Howard Street, 5th Floor,
% San Francisco, CA 94105-3013  United States

\version "2.10.0"

%\header
%{
%  title = "Jacob's Ladder"
%  composer = "trad."
%}

melody =
<<
     \context Voice
    {
	\set Staff.midiInstrument = "acoustic grand"
	\override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
	
	\autoBeamOff

	\time 4/4
	\clef violin
	\key a \major
	{
	    \partial 4 e'4 | a'4. e'8 a' b' cis'' d'' |
	    e''4.( cis''8) a'4 d''8 cis'' |
	    b'4.( gis'8) e'8 d'' cis'' b' | a'4.( gis'8) a'4 e' |
	    a'4. e'8 a' b' cis'' d'' | e''4.( cis''8) a'4 cis''8. cis''16 |
	    d''4 d''8. d''16 e''8 d'' cis'' b' |
	    cis''4 cis''8. cis''16 cis''4 d''8[ cis''8] |
	    b'4.( gis'8) a'4 fis' | e'4. d'8 cis'8 e'8 a'8 a' |
	    a'4. e'8 a' e' a' b' | cis''4 d'' e'' d'' | cis''2 b' |
	    a'2. \bar "||"
	}
    }
    \lyricsto "" \new Lyrics
    {
        \override LyricText #'font-size = #0
        \override StanzaNumber #'font-size = #-1

	I want to climb up Ja -- cob's lad -- der,
	Ja -- cob's lad -- der, O Ja -- cob's lad -- der,
	I want to climb up Ja -- cob's lad -- der,
	But I can't climb it till I make my peace with the Lord.

	O praise ye the Lord,
	I'll praise Him till I die,
	I'll praise Him till I die,
	And sing Je -- ru -- sa -- lem.
    }
    \lyricsto "" \new Lyrics
    {
% FIXME: Look at this.
%        \override LyricText #'font-size = #0
%        \override StanzaNumber #'font-size = #-1

	\small
	"" "" "" "" "" "" "" "" ""
	"" "" "" "" "" "" "" "" ""
	"" "" "" "" "" "" "" "" ""
	"" "" "" "" "" "" "" "" "" "" "" "" ""

	O "praise the" Lord, O praise "" ye "" the "" Lord.
    }
>>


\score
{
  \new Staff { \melody }

  \layout { indent = 0.0 }
}

\score
{
  \new Staff { \unfoldRepeats \melody }

  
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
      }
    }


}
