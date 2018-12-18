% 111.ly - Score sheet for "I'm Gwine To Alabamy"
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
%  title = "I'm Gwine To Alabamy"
%  composer = "trad."
%}

melody =
<<
     \context Voice
    {
	\set Staff.midiInstrument = "acoustic grand"
	\override Staff.VerticalAxisGroup.minimum-Y-extent = #'(0 . 0)

	\autoBeamOff

	\time 4/4
	\clef violin
	\key g \minor

	{
	    \partial 4 d''4 |
	    es''4 es'' d''4. bes'8 | c''8 g'4. r2 |
	    c''2( d''16[ c'' bes' a'] g'4 | c''8[ d'' es'' c''] bes'4 g'4) |
\break
	    bes'4 bes' bes' r8 g'8 | f'4 d' r2 |
	    g'2( a'16[ g' f' es'] d'4 | g'8[ a' bes' a'] g'4) \bar "||"
	}
    }

    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	\set stanza = "1."
	I'm gwine to A -- la -- ba -- my, Oh, __
	For to see my ma -- mmy, Ah. __
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
    \tempo 4 = 102
    }


}
