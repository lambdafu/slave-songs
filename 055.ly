% 055.ly - Score sheet for "I can't stand the fire"
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
%  title = "I can't stand the fire."
%  composer = "trad."
%}

melody =
<<
     \context Voice
    {
	\set Staff.midiInstrument = "acoustic grand"
	\override Staff.VerticalAxisGroup.minimum-Y-extent = #'(0 . 0)
	
	\autoBeamOff

	\time 2/4
	\clef violin
	\key g \minor
	
	{
	    \partial 8 g'8 | g'4 g'8. g'16 | 
	    << { \once \override Stem.transparent = ##t f'4
		 \set fontSize = #'-4 \stemDown f'16 f' f'
		 \set fontSize = #'0 \stemNeutral }
	       << \\ \set fontSize = #'0 \stemUp { f'4 r8 } >> >>
	    %% FIXME: Yuck, yuck.
	    \partial 8 f'8 | bes'4 bes'8. bes'16 |
	    << { \once \override Stem.transparent = ##t a'4 
		 \set fontSize = #'-4 \stemDown c''16 a'[ g']
		 \set fontSize = #'0 \stemNeutral }
	       << \\ \set fontSize = #'0 \stemUp { a'4 r8 } >> >>
	    %% FIXME: Yuck, yuck.
	    \partial 8 f'8 | g'8[ bes'] a' g' | f'4 a' |
	    g'8 a'16 bes' a'8 bes' | g'8 r8
	    { \set fontSize = #'-4 \stemDown d''16 d'' d''8 d'' }
	    \bar "||"
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	I can't stan' de fire, "(dear" sis -- "ter)"
	I can't stan' de fire, "(O" "Lord)"
	I can't stan' de fire,
	While Jor -- dan da roll so swif'. "(Tid" -- dy 'Ri -- "nah.)"
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
    \tempo 4 = 82
    }


}
