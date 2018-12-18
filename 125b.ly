% 125b.ly - Score sheet for "The Old Ship Of Zion"
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
%  title = "The Old Ship Of Zion"
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
	    \partial 8 b'16 b' | b'8 b' b' b' | b'4 d''8. d''16 |
	    a'4 c''8. c''16 | b'4 d''8 b'16 b' | b'8 b' b' b' | b'4 d''8 b' |
	    a'16 a' a' a' b'8 a' | g'4 r8 \bar "||"
	    \break
	    d''8 | d''8 d'' d'' d''16 d'' | d''16 c'' b' a' g'8 d''16 d'' |
	    \break
	    d''16 c'' b' a' g'8 d''16 d'' | d''16 c'' b' a' g'8 c''16 c'' |
	    \break
	    b'8 d'' a' c'' | b'8 d'' a' c''16 c'' |
	    \break
	    b'16 b' b' d'' a'8 a' | g'4 r8 \bar "||"
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	\set stanza = "1."
	Don't you see that ship a -- sail -- in',
	a -- sail -- in, a -- sail -- in,
	Don't you see that ship a -- sail -- in',
	Gwine o -- ver to the Prim -- ised Land?
	I asked my Lord, shall I ev -- er be the one,
	shall I ev -- er be the one,
	shall I ev -- er be the one,
	To go sail -- in', sail -- in',
	sail -- in', sail -- in',
	Gwine o -- ver to the Prim -- ised Land?
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
