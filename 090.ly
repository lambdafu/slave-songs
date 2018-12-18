% 090.ly - Score sheet for "I Don't Feel Weary"
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
%  title = "I Don't Feel Weary"
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
	\key es \major
	{
	    \partial 4 bes'4 | es''4 es''8.[ bes'16] bes'8 g' g'[ bes'] |
	    es''4 es''8.[ bes'16] bes'8[ g'] r4 |
	    es''4.( bes'8) c''8 bes' g' bes' |
	    bes'4.( es''8) es''4 \bar "||"

	    \break
	    es''4 | g''8 es'' es''8. bes'16 c''8 bes' bes'8. bes'16 |
	    c''8 bes' g'8. g'16 f'8[ es'] r4 | g'2 f'8 es' c' es' |
	    es'4.( f'8) es'4 r4
	    \bar "||"
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	I don't feel wea -- ry and no -- ways tired,
	O glo -- ry hal -- le -- lu -- jah.
	\set stanza = "1."
	Jest let me in the king -- dom
	While the world is all on fire.
	O glo -- ry hal -- le -- lu -- jah.
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
