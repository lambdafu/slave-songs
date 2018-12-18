% 085.ly - Score sheet for "Just Now"
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

\version "2.21.0"

%\header
%{
%  title = "Just Now"
%  composer = "trad."
%}

melody =
<<
     \context Voice
    {
	\set Staff.midiInstrument = "acoustic grand"
	\override Staff.VerticalAxisGroup.minimum-Y-extent = #'(0 . 0)

	\autoBeamOff

	\time 3/4
	\clef violin
	\key f \major
	{
	    \partial 4 a'8. bes'16 | c''4. d''8 c'' a' | bes'4 bes' g'8. a'16 |
	    bes'4. c''8 bes' g' | a'4 a' f'8 a' | g'4 f' e' | f'2 a'4 |
	    g'2 bes'4 | c''2 f'8 a' | g'4 f' e' | f'2
	    \bar "||"
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	\set stanza = "1."
	Sanc -- to -- fy me, sanc -- to -- fy me,
	Sanc -- to -- fy me, sanc -- to -- fy me,
	Sanc -- to -- fy me, just now;
	Just now; just now;
	Sanc -- to -- fy me just now.
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
    \tempo 4 = 120
    }


}
