% 073.ly - Score sheet for "The Resurrection Morn"
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
%  title = "The Resurrection Morn"
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

	%% EDITED: Originally this is notated in Bes Major, but that
	%% makes no sense.
	\key f \major
	{
	    \partial 4 f'4 | bes'4 d''8 bes' | f'4 a'8 a' |
	    bes'8[ g'] bes' d'' | c''8 r g'4 | as'4 g'8 f' |
	    e'4 g'8 bes' | as'4.( g'8) | f'4 \bar "||"

	    \break
	    f'8 f' | bes'8 bes' d'' bes' | f'8 f' a' a' |
	    bes'8[ g'] bes' d'' | c''8 r g' g' | as'8 as' g' f' |
	    e'8 e' g' bes' | as'4.( g'8) | f'4 \bar "||"
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	\set stanza = "1."
	O run, Ma -- ry, run,
	Hal -- le -- lu, hal -- le -- lu!
	O run, Ma -- ry, run,
	Hal -- le -- lu -- jah!
	\set stanza = "2."
	It was ear -- ly in de morn -- in',
	Hal -- le -- lu, hal -- le -- lu!
	It was ear -- ly in de mor -- nin',
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
    \tempo 4 = 60
    }


}
