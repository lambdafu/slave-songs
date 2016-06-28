% 093.ly - Score sheet for "O'er The Crossing"
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
%  title = "O'er The Crossing"
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
	\key as \major
	{
	    as'4 as' as'4. es'8 | as'4 es' r2 | as'8 es'4. as'4 bes' |
	    bes2 r4 as'4 | as'8 as'4. as'4. as'8 | as'4 as' as' r8 as'8 |
	    bes'8 as'4. fes'8( as4.) | c'2 r4 \bar "||"

	    \break
	    es'4 | c'16 es'8 es''16 g''8 es''8 ges''4 as''8. f''16 |
	    %% CHANGED: "bes'8 as'16" -> "bes'8. as'16"
	    es''4 c'' bes'8. c''16 bes'8. as'16 |
	    \break
	    f'4 es' r es' |
	    c'16 es'8 es''16 g''8 es''8 ges''4 as''8. f''16 |
	    \break
	    es''4. f''8 es''8[ des''] es''[ es'] | as'2 r \bar "||"
	}
    }
    \lyricsto "" \new Lyrics
    {
        \override LyricText #'font-size = #0
        \override StanzaNumber #'font-size = #-1

	\set stanza = "1."
	Bend -- in' knees a -- ach -- in',
	Bo -- dy racked wid pain,
	I wish I was a child of God,
	I'd git home bime -- by.
	%% CHANGED: "in,'" -> "in',"
	Keep pray -- in', I do be -- lieve
	We're a long time wag -- gin' o' de cros -- sin';
	Keep pray -- in', I do be -- lieve
	We'll git home to heaven bime -- bye.
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
