% 105.ly - Score sheet for "I'm Going Home"
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
%  title = "I'm Going Home"
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
	\key bes \major
	{
	    \partial 4 f'4 | bes'4 bes' bes' d''8. c''16 |
	    bes'8 g' f'4 r f'8 f' |
	    \break
	    d''8 d'' d''2 f''8 d'' | c''8 d'' bes'4 r f' |
	    \break
	    bes'4 bes' bes' d''8. c''16 | bes'8 g' f'4 r f' |
	    \break
	    f'4. f'8 a'8 c''4. | bes'2 r4 \bar "||"
	    \break
	    bes'4 | bes'2 d''4 es'' | f''2 r4 d'' | es''2 c''4 d'' |
	    es''2 r4 es'' |
	    \break
	    f''2 d''4 bes' | g'4 bes'2 g'4 | f'2 a'4 c'' |
	    bes'2 r4 \bar "||"
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	\set stanza = "1."
	I sought my Lord in de wil -- der -- ness,
	in de wil -- der -- ness, in de wil -- der -- ness.
	I sought my Lord in de wil -- der -- ness,
	For I'm a -- go -- ing home.
	For I'm go -- ing home,
	For I'm go -- ing home;
	I'm just get -- ting read -- y,
	For I'm go -- ing home.

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
