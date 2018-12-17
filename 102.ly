% 102.ly - Score sheet for "The Heaven Bells"
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
%  title = "The Heaven Bells"
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
	\key es \major
	{
	    %% CHANGED: Slur starting from bes not c.
	    bes'4 as'16. g'32 as'16. bes'32  | c''16 bes'8.(~ bes'8 as'8)) |
	    g'4 g'16 bes' bes' g' | g'16 f'8.~ f'4 |
	    bes'4 as'16. g'32 as'16. bes'32 | c''16 bes'8.~ bes'8 as'8 |
	    \appoggiatura g'8 bes' \appoggiatura g' es' f' g' |
	    < g es' >4. \bar "||"
	    bes8 | es16. g32 g16. bes32 bes16. es'32 es'16 f' |
	    g'16. g'32 g'16 as' bes'8. f'16 | f'16. f'32 f'16 g' as'8. es'16 |
	    es'16. es'32 es'16 es' g'8 bes' | 
	    es16. g32 g16. bes32 bes16. es'32 es'16 f' |
	    g'16. g'32 g'16 as' bes'8 bes' | bes'8 g'16. es'32 f'8 g' |
	    < g es' >4\fermata r4 \bar "||"
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	\set stanza = "1."
	O moth -- er I be -- li -- eve __
	O moth -- er I be -- li -- eve
	O moth -- er I be -- li -- eve
	That Christ was cru -- ci -- fied!
	O don't you hear the Heav -- en bells a -- ring -- ing o -- ver me?
	a -- ring -- ing o -- ver me?
	a -- ring -- ing o -- ver me?
	O don't you hear the Heav -- en bells a -- ring -- ing o -- ver me?
	It sounds like the judge -- ment day!
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
