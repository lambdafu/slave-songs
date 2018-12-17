% 048-p1.ly - Part of the score sheet for "Turn, sinner, turn O!"
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
%  title = "Turn, Sinner, Turn O!"
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

	d''4 b'8 b' a' b' g'4 | b'4 b'8 b' c'' b'4 r8 |
	d''4 b'8 b' a' g' fis'4 | a'4 a'8 a' b' a'4 r8 \bar "||"

	d''8^\markup{1st Var.} d'' b' b' a' b' g'4 | b'4 b'8 b' c'' b'4 r8 |
	g'8 g' g' g' a' a' fis'4 | a'4 a'8 a' b' a'8 r8 \bar "||"
    }

    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	\set stanza = "1."
	Turn, sin -- ner, turn to -- day, Turn, sin -- ner, turn O!
	Turn, sin -- ner, turn to -- day, Turn, sin -- ner, turn O!
	\set stanza = "3."
	Wait not for to -- mor -- row's sun, Turn, sin -- ner, turn O!
	Wait not for to -- mor -- row's sun, Turn, sin -- ner, turn O!
    }

    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	\set stanza = "2."
	Turn, "O sin" -- ner, "de worl'" da gwine, Turn, sin -- ner, turn O!
	Turn, "O sin" -- ner, "de worl'" da gwine, Turn, sin -- ner, turn O!
	\set stanza = "4."
	To -- morrow's sun will sure to shine, Turn, sin -- ner, turn O!
	To -- morrow's sun will sure to shine, Turn, sin -- ner, turn O!
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
