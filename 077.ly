% 077.ly - Score sheet for "Come Go With Me"
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
%  title = "Come Go With Me"
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
	\key c \major
	{
	    \partial 4 g'4 | g'16 g'8. g'8. g'16 |
	    bes'16 bes' g'8 g'8. g'16 |
	    g'8 g' f' e' | c'4 r8 c' |
	    g'16 g'8. g'8. g'16 |
	    c'8 c' as' c' | c'8. c'16 e' d' e'8 |
	    f'4 r \bar "||"

	    c''4 r8 d''16 c'' | e''8 c'' as' r |
	    g'4 r8 f'16 e' | f'8 e' c' r |
	    c''4 r8 d''16 c'' | e''8 c'' as' r16 c' |
	    c'16 c' e' c' e'8 e' f'4 \bar "||"
	}
    }
    \lyricsto "" \new Lyrics
    {
        \override LyricText #'font-size = #0
        \override StanzaNumber #'font-size = #-1

	\set stanza = "1."
	Ole Sa -- tan is a bus -- y ole man,
	He roll stones in my way;
	Mass' Je -- sus is my bo -- som friend,
	He roll 'em out o' my way.
	O come -- e go wid me,
	O come -- e go wid me,
	O come -- e go wid me,
	A -- walk -- in' in de heaven I roam.
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
