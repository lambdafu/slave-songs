% 047.ly - Score sheet for "Pray all de member."
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

% FIXME: can't switch it off for the book.
%\header
%{
%  title = "Pray all de member."
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
	\key g \major

	\repeat volta 2
	{
	    d''4 e''8 d'' d''4 d'' | g'2 a' | d''4 e''8 d'' d''4 d'' |
	    g'4 b' d''2
	}
	\repeat volta 2
	{
	    d''8 d'' e'' d'' b'4 b' | g'2 a' |
	    d''8 d'' e'' d'' b'4 b' | g'4 b' d''2
	}
	\repeat volta 2
	{
	    a'8 a' b' a' fis' fis' d'4 | g'2 a' |
	    g'8 g' b' a' fis' fis' d'4 | g'4 b' d''2
	}
     }

    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	\set stanza = "1."
	Pray all de mem -- ber,¹ O Lord!
	Pray all de mem -- ber, Yes, my Lord!
	\set stanza = "2."
	Pray a lit -- tle lon -- ger, O Lord!
	Pray a lit -- tle lon -- ger, Yes, my Lord!
	\set stanza = "3."
	Je -- ri -- cho da wor -- ry me, O Lord!
	Je -- ri -- cho da wor -- ry me, Yes, my Lord!
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
