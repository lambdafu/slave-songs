% 097.ly - Score sheet for "Almost Over"
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
%  title = "Almost Over"
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
	    a'4 a'8. a'16 | a'4 f'8 g' | a'4 a'8. a'16 | a'4 r |
	    \break
	    g'4 g' | g'4 f'8[ g'] | a'4 g' | f'4 c' |
	    \break
	    f'4. a'8 | g'8[ f'] a' g' | f'4.( e'8) |
%% CHANGED: #bes -> ces (blue note), and added reminding accidential.
	    f'4 f''8 d'' |
	    \break
	    c''4.( ces''8) | c''!4 f''8 c'' |
	    a'4.( g'8) | a'4 c''8[ a'] |
	    \break
	    f'4 c' | f'4 a' |
	    g'8[ f'] a' g' | f'4.( e'8) | f'2 \bar "||"
	}
    }
    \lyricsto "" \new Lyrics
    {
        \override LyricText #'font-size = #0
        \override StanzaNumber #'font-size = #-1

	\set stanza = "1."
	Some seek de Lord and they don't seek him right,
	Pray all day and sleep all night;
	And I'll thank God, al -- most o -- ver, 
	al -- most o -- ver, al -- most o -- ver, "(My" "Lord)"
	And I'll thank God, al -- most o -- ver.
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
