% 070.ly - Score sheet for "Good-bye"
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
%  title = "Good-bye"
%  composer = "trad."
%}

melody =
<<
     \context Voice
    {
	\set Staff.midiInstrument = "acoustic grand"
	\override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
	
	\autoBeamOff

	\time 2/4
	\clef violin
	\key c \major
	{
	    \partial 8 c''8 | g'4. e'8 | f'8 g' r a' | g'4 d'8. f'16 |
	    e'8 c' r c'' | g'4. e'16 e' | f'8 g' r a' | g' r d'8. f'16 |
	    e'8 c' c' d' | e'4 g'8.-> e'16 | f'8 d' d' e' |
	    f'8 f' g'8.-> f'16 | e'8 c' c' d'16 d' | e'8 e' g'8.-> e'16 |
	    f'8 d' d' d'16 e' | f'8 f' g'8.-> f'16 | e'8 c' r \bar "||"
	}
    }
    \lyricsto "" \new Lyrics
    {
        \override LyricText #'font-size = #0
        \override StanzaNumber #'font-size = #-1

	Good -- bye, my brud -- der, good -- bye,
	Hal -- le -- lu -- jah!
	Good -- by, sis -- ter Sal -- ly, good -- bye,
	Hal -- le -- lu -- jah!
	Go -- ing home,
	Hal -- le -- lu -- jah!
	Je -- sus call me,
	Hal -- le -- lu -- jah!
	Lin -- ger, no lon -- ger,
	Hal -- le -- lu -- jah!
	Tar -- ry no lon -- ger,
	Hal -- le -- lu -- jah!
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
      tempoWholesPerMinute = #(ly:make-moment 60 4)
      }
    }


}
