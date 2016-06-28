% 068.ly - Score sheet for "Hallelu, Hallelu"
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
%  title = "Hallelu, Hallelu"
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
	\key as \major
	{
	    \repeat volta 2
	    {
		\partial 4 es''4 | c''8 c'' as' as' | es'8 es' g' g' |
		as'4 as'8 c'' | bes'8 r \bar "||"
		\break
		des'' des'' | des''8 bes' bes' g' |
		es'8 des' f' as' | ges'4( f') | es'4
	    }
	}
    }
    \lyricsto "" \new Lyrics
    {
        \override LyricText #'font-size = #0
        \override StanzaNumber #'font-size = #-1

	\set stanza = "1."
	Oh one day as an -- od -- er,
	Hal -- le -- lu, hal -- le -- lu!
	\set stanza = "2."
	When de ship is out a -- sail -- in',
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
