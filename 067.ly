% 067.ly - Score sheet for "Sine Vallant Soldier"
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
%  title = "Sine Vallant Soldier"
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
	\key g \major
	{
	    \repeat volta 2
	    {
		\partial 8*3 d''8 d'' d'' | b'8 g' g'16 g' g'8 | e'8 g' r g' |
		\break
		fis'8 d' d'16 d' d'8 | b8 d' r fis' |
		\break
		g'8 g' a' c'' | b'4 c''8. c''16 |
		\break
		b'8 b' a'8. a'16 | g'8
	    }

	    \break
	    \repeat volta 2
	    {
		\partial 8*3 r8 g' a' | b'4 r8 b' | c''4 r8 c''8 |
		b'4 d'' | a'4 r8 a' |
		\break
		b'8 b' c'' e'' | d''4. c''8 |
		b'16 b'8. a'4 | g'4
	    }
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	Oh Lord, I want some va -- li -- ant sol -- dier,
	I want some va -- li -- ant sol -- dier,
	%% FIXME: valiant should be below the two notes.
	I want some vali -- ant sol -- dier,
	To help me bear de cross.
	For I weep, I weep, I can't hold out;
	If a -- ny mer -- cy, Lord, O pit -- y poor me.
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
