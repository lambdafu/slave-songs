% 0.ly - Score sheet for "Lord, Make Me More Patient"
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
%  title = "Lord, Make Me More Patient"
%  composer = "trad."
%}

melody =
<<
     \context Voice
    {
	\set Staff.midiInstrument = "acoustic grand"
	\override Staff.VerticalAxisGroup.minimum-Y-extent = #'(0 . 0)

	\autoBeamOff

	\time 6/8
	\clef violin
	\key f \major
	{
	    c''4. c''8 c'' c'' | f'4. f' |
	    d''4. d''8 e'' f'' | c''4( a'8) c''4 r8 |
	    c''4. c''8 b' c'' | f'4. g'4 g'8 |
	    a'4 a'8 g'[ f'] g' | f'4. r4 r8 |
	    f'4 c'8 f'4 a'8 | c''4. c''4 bes'8 |
	    a'4 a'8 g'8[ f'] g' | f'4. r4 r8 \bar "||"
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	Lord, make me more pa -- tient,¹
	Lord, make me more pa -- tient,
	Lord, make me more pa -- tient,
	Un -- til we meet a -- gain;
	Pa -- tient, pa -- tient, pa -- tient,
	Un -- til we meet a -- gain.
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
