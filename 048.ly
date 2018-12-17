% 048.ly - Score sheet for "Turn, sinner, turn O!"
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

	\partial 8 d''8^\markup{2d Var.} | d''8 d'' b' b' a' b' g'4 |
	b'4 b'8 b' c'' b' r a' | a'8 a' a' a' fis' e' d'4 |
	a'4 a'8 a' b' a'4 r8 \bar "||"

	g''8^\markup{3d Var.} g'' d'' d'' d'' d'' g''4 | b'4 b'8 b' c'' b'4 r8
	% EDITED: I removed a \bar "||" here which seems misplaced.
	g''8 g'' g'' g'' fis'' fis'' d''4 | a'4 a'8 a' b' a'4 r8 \bar "||"

	d''4^\markup{1st Var.} b'16 b' b'8 a' b' g'4 | b'4 b'8 b' c'' b'4 r8 |
	g'4 g'16 g' g'8 a' a' fis'4 | a'4 a'8 a' b' a'4 r8 \bar "||"
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
	\set stanza = "5."
	The sun may shine, but on your grave, Turn, sin -- ner, turn O!
	The sun may shine, but on your grave, Turn, sin -- ner, turn O!
	\set stanza = "6."
	Hark! I hear dem sin -- ner say, Turn, sin -- ner, turn O!
	Hark! I hear dem sin -- ner say, Turn, sin -- ner, turn O!
	\set stanza = "8."
	O sin -- ner, you make mis -- take, Turn, sin -- ner, turn O!
	O sin -- ner, you make mis -- take, Turn, sin -- ner, turn O!
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
	"" "" "" "" "" "" "" "" "" "" "" "" ""
	"" "" "" "" "" "" "" "" "" "" "" "" ""
	\set stanza = "7."
	"If you" get to heaven "I'll get" there, too, Turn, sin -- ner, turn O!
	"If you" get to heaven "I'll get" there, too, Turn, sin -- ner, turn O!
	\set stanza = "9."
	While de lamp hold out to burn, Turn, sin -- ner, turn O!
	While de lamp hold out to burn, Turn, sin -- ner, turn O!
    }

    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	"" "" "" "" "" "" "" "" "" "" "" "" ""
	"" "" "" "" "" "" "" "" "" "" "" "" ""
	"" "" "" "" "" "" "" "" "" "" "" "" "" ""
	"" "" "" "" "" "" "" "" "" "" "" "" "" ""
	"" "" "" "" "" "" "" "" "" "" "" "" "" ""
	"" "" "" "" "" "" "" "" "" "" "" "" "" ""
	"" "" "" "" "" "" "" "" "" "" "" "" "" ""
	\set stanza = "10."
	De wile' sin -- ner may re -- turn, Turn, sin -- ner, turn O!
	De wile' sin -- ner may re -- turn, Turn, sin -- ner, turn O!
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
