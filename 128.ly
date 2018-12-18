% 128.ly - Score sheet for "God Got Plenty O' Room"
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
%  title = "God Got Plenty O' Room"
%  composer = "trad."
%}

melody =
<<
     \context Voice
    {
	\set Staff.midiInstrument = "acoustic grand"
	\override Staff.VerticalAxisGroup.minimum-Y-extent = #'(0 . 0)

	\autoBeamOff

%%	\time 2/4
	\clef violin
	\key g \major
	{
	    \time 2/8 b'8 b' | \time 3/8 \tuplet 3/2 { b'16 b' b' } b'8 d'' |
	    \time 2/8 \tuplet 3/2 { a'16 a' b' } g'8 |
	    \time 2/4 a'4. g'16 a' | \time 2/8 b'8 a' | b'8 b' |
	    \time 3/8 \tuplet 3/2 { b'16 b' b' } b'8 b' |
	    \time 2/4 a'8 g' e' r | g'4. b'16 b' |
	    a'8 g' r4 \bar "||"
	    \time 2/4 d''8 d'' b' d'' | b'8 a' g'4 | a'4. g'16 a' |
	    b'8 a' r b' | b'8 b' b' g' | a'8 g' e'4 | g'4. b'16 b' |
	    a'8 g' r4 \bar "||"
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	God got plen -- ty o' room, got plen -- ty o' room,
	'Way in de king -- dom,
	God got plen -- ty o' room my Je -- sus say,
	'Way in de king -- dom.

	\set stanza = "1."
	Breth -- ren, I have come a -- gain,
	'Way in de king -- dom,
	To help you all to pray and sing,
	'Way in de king -- dom.
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
