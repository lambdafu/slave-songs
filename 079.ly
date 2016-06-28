% 079.ly - Score sheet for "In The Mansions Above"
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
%  title = "In The Mansions Above"
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
	\key c \major
	{
	    \partial 8*3 a'8 g' c'16 d' |
	    e'4 e'8. d'16 e'8 a' g' c'16 c' |
	    d'4 d'8. c'16 d'8 d' e' g' |
	    a'8. b'16 c''8 a' g'8.[ a'16] g'8 c'16 d' |
	    e'4 d'8. c'16 c'8 \bar "||"
	    r4 c''8 | c''4 c''8 e'' c''4 e'8 g' |
	    a'4 c''8 e' d'4 e'8. d'16 |
	    e'16 g'8. e'8. d'16 e'8 d' c' e'16 d' |
	    e'4 d'8. c'16 c'8 \bar "||"
	}
    }
    \lyricsto "" \new Lyrics
    {
        \override LyricText #'font-size = #0
        \override StanzaNumber #'font-size = #-1

	Good Lord, in de man -- shans a -- bove,
	Good Lord in de man -- shans a -- bove,
	My Lord, I hope to meet my Je -- sus
	In de man -- shans a -- bove.

	\set stanza = "1."
	If you get to heav -- en be -- fore I do,
	Lord, tell my Je -- sus I'm a -- com -- in' too,
	To de man -- shans a -- bove.
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
      tempoWholesPerMinute = #(ly:make-moment 60 4)
      }
    }


}
