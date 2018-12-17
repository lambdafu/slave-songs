% 076.ly - Score sheet for "Hold Out To The End"
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
%  title = "Hold Out To The End"
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
	\key g \major
	{
	    g'8 g' g' g' | g' g' r g' |
	    << { \stemUp d'' d''16 d'' \stemNeutral }
	       << \\ { \stemDown g'8\noBeam  b'16\noBeam  b' } >> >> d''8 d'' |
	    b'16[ a' g'8] r8 g' |
	    g'4 g'8. a'16 | b'16 e'8. r8 fis'16 g' |
	    a'8 a' d' d' | g'4 r \bar "||"
	    \break

	    g''8 g'' g'' d'' | e''8( d''4) r8 |
	    d''8 d'' d''8. a'16 | b'16[ a' g'8] r8 g' |
	    g'8 g' g' a' | b'8 e' r fis'16 g' |
	    a'8 a' d' d' | g'4 r \bar "||"
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	All dem Mount Zion mem -- ber, dey have ma -- ny ups and downs;
	But cross come or no come, for to hold out to the end.
	Hold out to the end, hold out to the end,
	It is my 'ter -- mi -- na -- tion for to hold out to the end.
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
    \tempo 4 = 60
    }


}
