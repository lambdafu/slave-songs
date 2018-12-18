% 110.ly - Score sheet for "Run, Nigger, Run."
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
%  title = "Run, Nigger, Run."
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
	    \partial 8 g'8 |
	    g'4 g' g' g'8 g' | e''8 e'' d''4 b' d'' |
	    \break
	    e''4 d''8 d'' b' b' g'4 | a'4 g' e' d' |
	    \break
	    d''4 d''8 b' g'4 g'8 g' | a'4 a'8 a' b' d'' r d'' |
	    \break
	    d''4 d''8 b' g'4 c''8 c'' | b'4 a' g' r8
	    \bar "||"
	}
    }

    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	O some tell me that a nig -- ger won't steal,
	But I've seen a nig -- ger in my corn -- field;
	O run, nig -- ger, run, for the pat -- rol will catch you,
	O run, nig -- ger, run, for 'tis al -- most day.
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
    \tempo 4 = 110
    }


}
