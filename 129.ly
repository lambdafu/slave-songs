% 129.ly - Score sheet for "You Must Be Pure And Holy"
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
%  title = "You Must Be Pure And Holy"
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
	{
	    \partial 4 g'4 | g'4 e' e'8 e' d' d' | g'4 e' g' g' |
	    e'4 d' d'8 d' b4 | d'4 e'2\fermata g'4 | g'4 e'8 e' e' e' d'4 |
	    g'4 e' g' g' | e'4 d' d'8 d' b4 | d'4 e'2 \bar "||"
	    d'4^\markup { CHORUS } | g'4 g' g' g' | g'4 b'2 g'4 |
	    a'4 a' a' g'8 a' | b'4 g'2 b'4 | g'4 g' g' d' | e'4 g'2 g'4 |
	    g'4 g' g' e' | g'2 r4 \bar "||"
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	\set stanza = "1."
	When I was wick -- ed an' -- a prone to sin,
	My Lord, breth -- er --en, ah my Lord!
	I thought that I could -- n't be born a -- gin,
	My Lord, breth -- er -- en, ah my Lord!

	You must be pure and ho -- ly,
	You must be pure an' -- a ho -- ly,
	You must be pure and ho -- ly
	To see God feed his lambs.
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
