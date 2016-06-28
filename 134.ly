% 134.ly - Score sheet for "Calinda"
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
%  title = "Calinda"
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

	\time 6/8
	\clef violin
	\key f \major
	{
	    \partial 8 a'8^\markup { SOLO } | c''4 a'8 bes' bes' bes' |
	    d''4 bes'8 a' f' a' | c''4 a'8 g' e' g' |
	    bes'4 e'8 f'4 \bar "||"
	    f'8^\markup { CHORUS } | f'8. f'16 f'8 e'4 g'8 |
	    bes'4 bes'8 a'4 f''8 | c''8. a'16 f'8 e'4 g'8 |
	    bes'4 e'8 f'4 \bar "||"
	}
    }
    \lyricsto "" \new Lyrics
    {
        \override LyricText #'font-size = #0
        \override StanzaNumber #'font-size = #-1

	\set stanza = "1."
	Mi -- chié Pré -- val li don -- nin gran bal,
	Li fait naig pa -- yé pou sau -- té in -- pé.
	Dan -- sé ca -- lin -- da, bou -- doum, bou -- doum,
	Dan -- sé ca -- lin -- da, bou -- doum, bou -- doum.
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
