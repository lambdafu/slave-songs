% 082.ly - Score sheet for "Heave Away"
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
%  title = "Heave Away"
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
	\key c \major
	{
	    \partial 4 c''8. d''16 |
	    e''2( g'4) e''8. c''16 | d''2( c''4) g'4 |
	    g'8 g' a'8. b'16 c''8 c'' c'' c'' |
	    d''8 c'' e''8. d''16 c''4 c''8. d''16 |
	    e''2( g'4) e''8. c''16 | d''4.( a'8 c''4) g'8 a' |
	    c''4 e'' d''8. b'16 c''8 g'' |
	    a''8 g'' e'' c'' d'' c'' a' g' | e'8 g' e'8. d'16 c'4 \bar "||"
	    c'8. e'16 | g'4.( e'8) g'8 a' c''4 | e''4 d''8. b'16 c''4
	    \bar "||"
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	Heave a -- way, heave a -- way!
	I'd ra -- ther court a yel -- low gal than work for Hen -- ry Clay.
	Heave a -- way, heave a -- way! __
	Yel -- low gal, I want to go,
	I'd ra -- ther court a yel -- low gal than work for Hen -- ry Clay.
	Heave a -- way! Yel -- low gal, I want to go!
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
