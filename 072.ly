% 072.ly - Score sheet for "The Day Of Judgement."
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
%  title = "The Day Of Judgement."
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

	\partial 4 f'8 a' | c''8 c'' c'' c'' | c''4 a'8 a' |
	bes'8 bes' bes' bes' | bes'4 g'8 g' | a'8 a' a' a' | bes'4 e'8 e' |
	f'2( | g'2 | as'4.) g'8 |

	\break
	f'4 f'8 g' | a'?8 a' a' a' | bes'4 e'8 e' | f'4\fermata \bar "||"
    }

    \lyricsto "" \new Lyrics
    {
        \override LyricText #'font-size = #0
        \override StanzaNumber #'font-size = #-1

	\set stanza = "1."
	And de moon will turn to blood,
	And de moon will turn to blood,
%% FIXME: day-O-yoy should be spread over the notes?
	And de moon will turn to blood
	In dat day-O-yoy,¹ my soul!
	And de moon will turn to blood in dat day.
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
