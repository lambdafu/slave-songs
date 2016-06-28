% 087.ly - Score sheet for "Round The Corn, Sally"
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
%  title = "Round The Corn, Sally"
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
	
	{
	    c''8 c'' c''16 c''8 c''16 | d''8 c'' bes'16 a'8 r16 |
\break
	    bes'8.( d''16 d''4) | d''16 d'' c''[ bes'] b'16 c''8 r16 |
\break

	    d''16 d'' c''8 d''16 d'' c''8 | d''16 d'' c''8 bes'16 a'8 r16 |
\break
	    bes'8 c'' d''4 | d''16 d'' c''[ bes'] b' c''8 r16 \bar "||"
	}
    }

    \lyricsto "" \new Lyrics
    {
        \override LyricText #'font-size = #0
        \override StanzaNumber #'font-size = #-1

	\set stanza = "1."
	Five can't ketch me and ten can't hold me,
	Ho, __ round the corn, Sal -- ly!
	Round the corn, round the corn, round the corn, Sal -- ly!
	Ho, ho, ho, round the corn, Sal -- ly!
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
