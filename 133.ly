% 133.ly - Score sheet for "Caroline"
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
%  title = "Caroline"
%  composer = "trad."
%}

melody =
<<
     \context Voice
    {
	\set Staff.midiInstrument = "acoustic grand"
	\override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
	
	\autoBeamOff
	\tupletDown

	\time 4/4
	\clef violin
	\key g \major
	{
	    d''4 d'' d'' \times 2/3 { b'8 c'' d'' } |
	    e''8 d'' c'' b' \times 2/3 { d'' c'' a' } r4 |
	    c''4 c'' c'' \times 2/3 { a'8 b' c'' } |
	    d''8 c'' b' a' \times 2/3 { b' a' g' } r8 \bar "||"
	    \break
	    d'8 | g'16 g' b'4 g'8 a'16 a' c''4 a'8 |
	    g'16 g' b'4 fis'8 a'16 fis'16 d'8 r d' |
	    g'16 g' b'4 b'8 a'16 a' c''4 e''8 |
	    d''16 d'' d''4 fis'8 a'16 a' g'8 r4 \bar "||"
	}
    }
    \lyricsto "" \new Lyrics
    {
        \override LyricText #'font-size = #0
        \override StanzaNumber #'font-size = #-1

	Aine, dé, trois, Car -- o -- line,
	ça ça yé comme ça ma chère,
	Aine, dé, trois, Car -- o -- line,
	ça ça yé comme ça ma chère,
	Pa -- pa di non, man -- man di non,
	C'est li mo oulé, c'est li ma pren;
	Ya pas l'arzan pou ache -- té ca -- banne,
	C'est li mo ou-lé, c'est li ma pren.
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
