% 103.ly - Score sheet for "The Gold Band"
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
%  title = "The Gold Band"
%  composer = "trad."
%}

melody =
<<
     \context Voice
    {
	\set Staff.midiInstrument = "acoustic grand"
	\override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
	
	\autoBeamOff

	\time 3/4
	\clef violin
	\key g \major
	{
	    \partial 4 b'8. c''16 | d''2 b'8.[ c''16] | d''2 b'8. a'16 |
	    g'4 g'8 r8\fermata b'8. b'16 | a'4 a'8 r8\fermata b'8. b'16 |
	    a'2 b'8. c''16 | d''2 b'8.[ c''16] | d''2 b'8. a'16 |
	    g'4 e'8 r8\fermata d'8. d'16 | g'4 b'8 r\fermata a'8. a'16 |
	    g'2  \bar "||"
	    \time 4/4 \partial 4 g'8 a' | b'8 b' b' b' b'4 b' |
	    b'2 r4 d''8 b' | a'8 a' a' a' a'4 a' | a'2 \bar "||"
	    \time 3/4 \partial 4 b'8. c''16 | d''2 b'8.[ c''16] |
	    d''2 b'8. a'16 | g'4 e'8 r\fermata d'8. d'16 |
	    g'4 b'8 r\fermata a'8. a'16 | g'2 \bar "||"
	}
    }
    \lyricsto "" \new Lyrics
    {
        \override LyricText #'font-size = #0
        \override StanzaNumber #'font-size = #-1

	\set stanza = "1."
	Gwine to march a -- way in de gold band,
	In de ar -- my, bye -- and -- bye;
	Gwine to march a -- way in de gold band,
	In de ar -- my, bye -- and -- bye.
	Sin -- ner, what you gwine to do dat day?
	Sin -- ner, what you gwine to do dat day?
	When de fire's a -- roll -- ing be -- hind you,
	In de ar -- my, bye -- and -- bye.
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
      tempoWholesPerMinute = #(ly:make-moment 100 4)
      }
    }


}
