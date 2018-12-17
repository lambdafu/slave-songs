% 066.ly - Score sheet for "The Sin-Sick Soul"
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
%  title = "The Sin-Sick Soul"
%  composer = "trad."
%}

melody =
<<
     \context Voice
    {
	\set Staff.midiInstrument = "acoustic grand"
	\override Staff.VerticalAxisGroup.minimum-Y-extent = #'(0 . 0)
	
	\autoBeamOff

	\time 2/4
	\clef violin
	\key g \minor
	{
	    \partial 8 g'16 a' | bes'8 bes'16 bes' d'8. d'16 | d'8 g' r c'' |
	    d''8. c''16 bes'8 bes' | g'4 r8 bes'16 c'' |
	    d''8 d''16 d'' c''8. bes'16 | bes'8 c'' r g' |
	    g'8. a'16 bes'8 a' |
	    g'4 r8 g''16 g'' | g''8 g'' bes'8. bes'16 | c''8 d'' r g' |
	    g'8. a'16 bes'8 a'8 | g'4 r8 \bar "||"
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	Brud -- der George is a -- gwine to glo -- ry,
	Take car' de sin -- sick soul,
	Brud -- der George is a -- gwine to glo -- ry,
	Take car' de sin -- sick soul.
	Brud -- der Steph -- en's gwin to glo -- ry,
	Take car' de sin -- sick soul.
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
    \tempo 4 = 82
    }


}
