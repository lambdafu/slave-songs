% 100.ly - Score sheet for "Let God's Saints Come In"
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
%  title = "Let God's Saints Come In"
%  composer = "trad."
%}

melody =
<<
     \context Voice
    {
	\set Staff.midiInstrument = "acoustic grand"
	\override Staff.VerticalAxisGroup.minimum-Y-extent = #'(0 . 0)
	
	\autoBeamOff
	\tupletDown

	\time 4/2
	\clef violin
	\key es \major
	{
	    \repeat volta 2
	    {
		g'2 \tuplet 3/2 { es'4( g' bes') } bes'4.( g'8) f'4 as'8[ g'] |
		f'2 f'4. es'8 d'4 es' f' g' | as'4. g'8 as'4. bes'8 c''2 as' |
		g'1 es'
	    }
	    \break
	    \time 4/4
	    \partial 4 es'8. es'16 |
	    \tuplet 3/2 { es'8 es' es' } es' d' c' d' es'4 |
	    f'8 f' f'4 g'8 bes'8 bes'8\fermata g'16 f' |
	    \tuplet 3/2 { es'8 es' es' } es' d' c' d' es'8. es'16 |
	    f'4. f'8 g'4. f'8 | es'2 r4 \bar "||"
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	John saw-r-O, John saw -- r-O,
	John saw de ho -- ly num -- ber set -- tin' on de gold -- en al -- tar!

	\set stanza = "1."
	It's a lit -- tle while lon -- ger yere be -- low,
	yere be -- low, yere be -- low,
	It's a lit -- tle while lon -- ger yere be -- low,
	Be -- fore de Lamb of God!
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
    \tempo 4 = 80
    }


}
