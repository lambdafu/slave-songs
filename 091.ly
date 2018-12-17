% 091.ly - Score sheet for "The Hypocrite And The Concubine"
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
%  title = "The Hypocrite And The Concubine"
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
	\key g \minor
% FIXME: Isn't this really just g major with blue notes?
	
	{
	    g'4 c'' c'' c''8 b' | c''4 c'' c''( bes') |
	    g'4 c''8 c'' c''4 b' | c''4( bes') r4. g'8 |
	    g'4 c'' c'' c''8 b' | c''4 c'' c''( bes'8) g' |
	    c''4 g'8 g' bes'4 bes' | g'2 r2 |
	    \break
	    d''8 d'' d'' d'' d''4 g' | bes'4 bes' d''8([ c''] bes'4) |
	    d''8 d'' d'' g' bes'4 bes' | g'2 r2 |
	    \break
	    d''8 d'' d'' d'' d''4 g' | bes'4 bes' d''8([ c'' bes']) d'' |
	    d''4 d''8 g' bes'4 bes' | g'2 r2 \bar "||"
	}
    }

    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	\set stanza = "1."
	Hy -- po -- crite and the con -- cu -- bine,
	Liv -- in' a -- mong the swine,
	They run to God with the lips and tongue,
	And leave all the heart be -- hind.
	Aun -- ty, did you hear when Je -- sus rose?
	Did you hear when Je -- sus rose?
	Aun -- ty, did you hear when Je -- sus rose?
	He rose and he 'scend on high.
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
    \tempo 4 = 102
    }


}
