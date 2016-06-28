% 131.ly - Score sheet for "Rémon"
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
%  title = "R\'emon"
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

	\time 2/4
	\clef violin
	\key f \major
	{
	    r4 \times 2/3 { f'8^\markup { SOLO } a' c'' } |
	    a'8 bes'4 g'8 | bes'4 \times 2/3 { g'8 bes' d' } |
	    bes'8 c''4 f'8 | a'4 \times 2/3 { f'8 a' c'' } |
	    a'8 bes'4 e'8 | g'8 g' \times 2/3 { bes' bes' e' } |
	    g'8 f'4 \bar "||"
	    \break
	    a'8^\markup { CHORUS } | f'4 \times 2/3 { a'8 a' a' } |
	    g'8( bes'4) g'8 | e'4 \times 2/3 { g'8 g' g' } |
	    f'8( a'4) a'8 | f'4 \times 2/3 { f'8 a' c'' } |
	    bes'8( d''4) bes'8 | \times 2/3 { g'8 g' bes' } bes'8 e' |
	    g'8 f'4 r8 \bar "||"
	}
    }
    \lyricsto "" \new Lyrics
    {
        \override LyricText #'font-size = #0
        \override StanzaNumber #'font-size = #-1

	Mo par -- lé Ré -- mon, Ré -- mon,
	Li par -- lé Si -- mon, Si -- mon,
	Li par -- lé Ti -- tine, Ti -- tine,
	Li tom -- bé dans cha -- grin.

	O femme Rom -- u -- lus, oh!
	Belle femme Rom -- u -- lus, oh!
	O femme Rom -- u -- lus, oh!
	Belle femme qui ça vou -- lé mo fai.
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
