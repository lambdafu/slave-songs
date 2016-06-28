% 046.ly - Score sheet for "Bell da ring."
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
%  title = "Bell da ring."
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
	\key g \major

	\repeat volta 2
	{
	    \partial 4 g'4 | b'2 b'4 d'' | a'4 e'2 g'4 | a'4. a'8 a' b'4 a'8 |
	    \partial 1 g'4 e' d'2 
	}
	\repeat volta 2
	{
	    \partial 1 b'8 b' b' b' b'4 d'' |
	    a'4 a' e'2 | a'8 a' a' a' a'4 b' | g'4 g' d'
	}
	\repeat volta 2
	{
	    d''4 | g'4 a' b' b' | b'4 b' b' d'' | g'4 a' g' g' | g'4 g' g'
	}
     }

    \lyricsto "" \new Lyrics
    {
        \override LyricText #'font-size = #0
        \override StanzaNumber #'font-size = #-1

	I know mem -- ber, know Lord, I know I yed -- de de bell da ring.
	\set stanza = "1."
	Want to go to meet -- ing, Bell da ring,
	Want to go to meet -- ing, Bell da ring.
	\set stanza = "2."
	"(Say)" Road so storm -- y,¹ Bell da ring,
	"(Say)" Road so storm -- y, Bell da ring.
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
      tempoWholesPerMinute = #(ly:make-moment 80 4)
      }
    }


}
