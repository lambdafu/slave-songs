% 040.ly - Score sheet for "Build a house in paradise."
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
%  title = "Build A House In Paradise"
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
	\key g \major

	\repeat volta 2
	{
	    \partial 8 b'8 | b'16 b' b' b' g'8 g' |

	    b'8 d'' << { \stemUp c''8
			       \set fontSize = #'-4 
			       c'' |
			       \once \override NoteHead.transparent = ##t
			       \once \override Stem.transparent = ##t g'16
			       \set fontSize = #'-4 
			 c''16 c'' c'' c'' a'8
			 \set fontSize = #'0 }
		       << \\ { \slurDown
			       \override Slur.attachment = #'(stem . stem)
			       c''4( | c''4) r8 } >> >>
	    d'8
	}
	\alternative
	{
	    { a'8 c'' b' }
	    { \partial 2 fis'8 a' g' r }
	}

	\break
	\repeat volta 2
	{
	    \partial 2
	    g'16 g' g'8 g' g' | g'16 g' g' g' a'8 r |
	    fis'16 fis' fis'8 fis' fis' | fis'16 fis' fis' fis' g'8 r
	}
    }

    \new Lyrics
    \lyricsto "" {
      \override LyricText.font-size = #0
      \override StanzaNumber.font-size = #-1

	My brud -- der build a house in Pa -- ra -- dise,
	"(My" "" fa -- der build a "house.)"
	in Pa -- ra -- dise, Pa -- ra -- dise.

	Build it wid -- out a ham -- mer or a nail,
	Build it wid -- out a ham -- mer or a nail.
    }
    \new Lyrics
    \lyricsto "" {
      \override LyricText.font-size = #0
      \override StanzaNumber.font-size = #-1

	"" "" "" "" "" "" "" "" "" ""
      %% FIXME: Not sure about this.
	"" "" O -- na
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
    \tempo 4 = 80
    }


}
