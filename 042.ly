% 042.ly - Score sheet for "I'm a trouble in de mind."
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

\version "2.10.0"

%\header
%{
%  title = "I'm A-Trouble In De Mind"
%  composer = "trad."
%}

melody =
<<
     \context Voice
    {
	\set Staff.midiInstrument = "acoustic grand"
	\override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
	
	\autoBeamOff

	\time 2/4
	\clef violin
	\key es \major

	es'8 es'16 es' g' g' g' g' | c''4. d''8 |
	es''8 c''16 c'' c'' c'' g' g' | c''4 r8 d'' |
	es''8 c'' c'' g' | as'16 g'8. es'4 |
	bes8 bes16 bes d'16 d' d' d' | es'4 r8

	\break
	\repeat volta 2
	{
	    bes'16 bes' | bes'16 bes' bes' bes' d''8 bes'16 bes' |
	    es''8 es'' r bes'16 bes' | bes'16 bes' bes' bes' d''4( | d''8) r8 r
	}
    }

    \lyricsto "" \new Lyrics
    {
      \override LyricText #'font-size = #0
      \override StanzaNumber #'font-size = #-1

	I am a -- trou -- ble in de mind,
	O I am a -- trou -- ble in de mind;
	I ask my Lord what shall I do,
	I am a -- trou -- ble in de mind.

	I'm a -- trou -- ble in de mind,
	What you doubt for?¹
	I'm a -- trou -- ble in de mind.
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
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 80 4)
      }
    }


}
