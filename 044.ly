% 044.ly - Score sheet for "Archangel open the door."
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
%  title = "Archangel Open The Door"
%  composer = "trad."
%}

melody =
<<
     \context Voice
    {
	\set Staff.midiInstrument = "acoustic grand"
	\override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
	
	\autoBeamOff

	\time 4/4
	\clef violin
	\key f \major

	\partial 4 c''4 | c''2 d''4 c'' |
	a' a' a' \times 2/3 { d''8 d'' d'' } |
	d''4. e''8 f''4 d'' | c''2 r4 a' | c''2 d''4 c'' |
	a'4 f' f' \times 2/3 { f''8 f'' f'' } |
	c''4. c''8 a'4 g' | f'2 r4 \break
    
	\repeat volta 2
	{
	    \partial 4 c''4\fermata | a'4 c''8 c'' a'4 f' |
	    a'2 a'4 f' | f'4 a' g'8 g' f'4 | g'2 r4 g' |
	    g'4 g'8 g' g'4 f' | a'4 c''2 <f' f''>4 |
	    <f' f''>4 <a' f''> <g' e''>8 <g' e''> <e' e''>4 | <f' f''>2
	}
     }

    \lyricsto "" \new Lyrics
    {
        \override LyricText #'font-size = #0
        \override StanzaNumber #'font-size = #-1

	I ax all dem brud -- der¹ roun',
	Brud -- der,¹ why can't you pray for me?
	I ax all dem brud -- der roun',
	Brud -- der, why can't you pray for me?

	\set stanza = "1."
	I'm gwine to my heaven,
	I'm gwine home, Arch -- an -- gel o -- pen de door;
	I'm gwine to my heaven,
	I'm gwine home, Arch -- an -- gel o -- pen de door.
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
