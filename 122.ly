% 122.ly - Score sheet for "This Is The Trouble Of The World"
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
%  title = "This Is The Trouble Of The World"
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
	\key a \minor
	{
	    \repeat volta 2
	    {
		\partial 8 a'16[ b'] | c''8 c''16 a' c'' c'' a' a' |
		g' a'8. r8 c''16 c'' | d''16 d'' d'' d'' d'' e''8 c''16 |
		c''16 a'8. r8 a'16[ b'] | c''8 c''16 a' c''16 c'' c'' a' |
		c''8 c''16 a' c''8 c''16 c'' |g'16 a'8 a'16 a' a' e'16 e' |
		d'4 r8
	    }
	    \repeat volta 2
	    {
		\partial 2 a'16 a'8 a'16 a' a' e'16 e' |
		g'8 b'4. | a'16 a'8 a'16 a' a' e'16 e' | d'4 r8 \bar "||"
		\set fontSize = #'-4
		a'16 <g' b'>16 c''8 c''
	    }
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	I ax Fa -- der Geor -- gy for re -- li -- gion,
	Fa -- der Geor -- gy would -- n't give me re -- li -- gion;
	You give me re -- li -- gion for to run to my el -- der;
	O dis is de troub -- le of de world.
	Dis is de troub -- le of de world,
	O,¹ Dis is de troub -- le of de world.
	"(what" you doubt "for?)²"
    }
    %% FIXME: In the original, it is all in the score sheet, but this
    %% is difficult to do.
    %% "(what" you shame "for?)"
    %% "(take" it ea -- "sy)"
    %% "(Tit" -- ty Me -- "lia)"
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
