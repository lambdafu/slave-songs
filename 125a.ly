% 125a.ly - Score sheet for "The Old Ship Of Zion"
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

	\time 4/4
	\clef violin
	\key a \major
	{
	    \repeat volta 2
	    {
		\partial 4 a' | e'4 a' a' a'8 b' | cis''4 cis''8. a'16 b'4 r |
		\break
		b'2 a'8 e' fis' a' | a'2 a'4
	    }
	    \break
	    e''8. d''16 | cis''4 b'8. b'16 a'8 e' fis' a' |
	    b'4.( e''8) e''4 e''8. d''16 |
	    \break
	    cis''4 b'8. b'16 a'8 e' fis' gis' |
	    a'2 a'4 \bar "||"
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	\set stanza = "1."
	What ship is that you're en -- list -- ed up -- on?
	O glo -- ry hal -- le -- lu -- jah!
	'Tis the old ship of Zi -- on, hal -- le -- lu -- jah!
	'Tis the old ship of Zi -- on, hal -- le -- lu -- jah!
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
