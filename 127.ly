% 127.ly - Score sheet for "The Social Band"
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
%  title = "The Social Band"
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
	\key f \major
	{
	    \partial 8 a'16[ g'] | f'8 f' f' f' |
	    f'16[ g'] a'4 r8 | g'8 f' c''8. d''16 | c''4 r8 bes' |
	    a'16 a'8. c'8 c'16 c' | f'8.[ g'16] a'8 a' |
	    bes'16 bes'8. g'8. g'16 | f'4 r8 \break
	    c''8 | c''8 c''16 c'' c'' c'' c'' c'' | c''8 f''8 c''8. bes'16 |
	    bes'8 bes'16 bes' bes' bes' bes' bes' | bes'8 d'' c''8. c''16 |
	    c''8 c''16 c'' c'' c'' c'' c'' | c''8 f'' c''8. bes'16 |
	    a'8. a'16 g'8 g' | f'4 r8 \bar "||"
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	Bright an -- gels on the wa -- ter,
	Hove -- ring by the light;
	Poor sin -- ner stand in the dark -- ness,
	And can -- not see the light.

	I want Aunt -- y Ma -- ry¹ for to go with me,
	I want Aunt -- y Ma -- ry for to go with me,
	I want Aunt -- y Ma -- ry for to go with me,
	To join the so -- cial band.
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
    \tempo 4 = 100
    }


}
