% 094.ly - Score sheet for "Rock o' my soul."
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
%  title = "Rock o' my soul."
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
	\key f \major

	c''16 c'' a'8 f' a'16 a' | c''16 c'' c''8 c''16 bes' g'8 | \break
	g'16 g' g'8 g' bes'16 bes' | bes'16 bes' bes'8 bes' c''16 c'' | \break
	c''16 c'' a'8 f' a'16 a' | c''16 c'' c''8 c''16 bes' g'8 | \break
	c''4 c''16 bes' g'8 | 
	<< { \once \override Stem #'transparent = ##t f'8
	     \set fontSize = #'-4 \stemDown c''8 c'' c''
	     \set fontSize = #'0 \stemNeutral }
	   << \\ \set fontSize = #'0 \stemUp { f'4 r } >> >>
	\bar "||"
    }

    \lyricsto "" \new Lyrics
    {
        \override LyricText #'font-size = #0
        \override StanzaNumber #'font-size = #-1

	\set stanza = "1."
	Rock o' my soul in de bo -- som of A -- bra -- ham,
	Rock o' my soul in de bo -- som of A -- bra -- ham,
	Rock o' my soul in de bo -- som of A -- bra -- ham,
	Lord, Rock o' my soul. "(King" Je -- "sus)"
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
