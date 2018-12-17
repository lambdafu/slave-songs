% 084.ly - Score sheet for "On To Glory"
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

\version "2.21.0"

%\header
%{
%  title = "On To Glory"
%  composer = "trad."
%}

melody =
<<
     \context Voice
    {
	\set Staff.midiInstrument = "acoustic grand"
	\override Staff.VerticalAxisGroup.minimum-Y-extent = #'(0 . 0)
	
	\autoBeamOff

	\time 3/4
	\clef violin
	\key a \major
	{
	    \repeat volta 2
	    {
		\partial 8*3 e'8 a' a' | cis''4 cis''8 a' b' a' |
		cis''4. e'8 a' a' | cis''4. a'8 b' cis'' | a'4.
	    }
	    \repeat volta 2
	    {
		cis''8 d'' e'' | b'8 r4 cis''8 d'' e'' |
		b'8 r4 cis''8 d'' e'' | b'8 r4 gis'8 a' b' | e'8 r4
	    }
	    \bar "||"
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	\set stanza = "1."
	O come my breth -- ren and sis -- ters too,
	We're gwine to join the heav -- enly crew;

	O hal -- le -- lu, 
	O hal -- le -- lu, 
	O hal -- le -- lu -- jah to the Lord.
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	%% FIXME: This is not entirely accurate.
	%% Should be part of first stanza.  The "-" is also weird.
	To Christ our Sav - iour let us sing,
	And make our loud ho -- san -- nas ring.
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
    \tempo 4 = 120
    }


}
