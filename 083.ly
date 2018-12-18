% 083.ly - Score sheet for "Wake Up, Jacob"
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
%  title = "Wake Up, Jacob"
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
		d''8 d'' b' b' | g'8 g'16 g' e'8 d'16 d' |
		g'4 a' | b'16( d''4) r16 b'8 |
		d''8 d'' b' b' | g'8 g'16 g' e'8 d'16 d' |
		g'4 a'8.( fis'16)  |
	    }
	    \alternative
	    {
		{ g'4( g'8) b'8 }
		{ g'4( g'8) g'8 }
	    }
	    g'16 g' g' g' e'8 d' | g'8 g' e'8[ d'] | g'4 a'8. a'16 |
	    b'4. g'8 | g'16 g' g' g' e'8 d' | g'8 g' e'[ d'] |
	    g'4 a'8. g'16 |
	    \set Score.repeatCommands = #'((volta "1."))
	    d''4.
	    b'8^"D.C."
	    %% FIXME: Doesn't seem to work right if just before the bar.
	    \set Score.repeatCommands = #'((volta #f))
	    \bar "||"
	    \set Score.repeatCommands = #'((volta "2."))
	    g'2
	    \set Score.repeatCommands = #'((volta #f))
	    \bar "||"
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	\set stanza = "1."
	Wake up, Ja -- cob, day is a -- brea -- king,
	I'm on my way;
	O, wake up, Ja -- cob, day is a -- brea -- king,
	I'm on my way.  O!  way.
	I want to go to heav -- en when I die, Do love de Lord!
	I want to go to heav -- en when I die, Do love de Lord!
	O!  Lord.
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
    \tempo 4 = 120
    }


}
