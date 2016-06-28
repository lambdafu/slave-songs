% 116.ly - Score sheet for "I Want To Join The Band"
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
%  title = "I Want To Join The Band"
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
	    e''4 e'' e'' e'' | e''8 d''8 d''4 d''2 |
	    \break
	    e''4 d''8 d'' d''4 c'' | e''8. e''16 d''8. d''16 c''4 a' |
	    \break
	    g'4. g'8 d''4. d''8 | \appoggiatura d''16 c''2. a'4 |
	    \break
	    c''4. c''8 a'4. a'8 | g'4 e''8. e''16 c''8 c'' a'4 |
	    \break
	    g'4. g'8 d''4. d''8 | \appoggiatura d''16 c''2. r4 \bar "||"
	}
    }
    \lyricsto "" \new Lyrics
    {
        \override LyricText #'font-size = #0
        \override StanzaNumber #'font-size = #-1

	What is that up yon -- der I see?
	Two lit -- tle an -- gels com -- in' a' -- ter me;
	I want to jine the band,
	I want to jine the band,
	"(Sing" to -- geth -- "er)"
	I want to jine the band.
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
