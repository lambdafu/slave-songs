% 099.ly - Score sheet for "Let God's Saints Come In"
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
%  title = "Let God's Saints Come In"
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
	{
	    \repeat volta 2
	    {
		d''8 d'' e''16 d'' b'8 | d''16 d'' d''8 d''16 c'' r8 |
		c''8 c'' d''16 c'' a'8 | c''16 c'' c''8 c''16 d'' r8 |
		d''8 d'' e''16 d'' b'8 | d''16 d'' d''8 d''16 d'' d''8 |
		fis''8 fis'' d'' a' | g'4 r \bar "||"
		\set fontSize = #'-4
		d''8 e'' e'' cis''
		\set fontSize = #'0
	    }
	    \break
	    b'8 d'' d'' d''16 b' | d''8 d'' b' r16 b' | b'8 b' d'' cis'' |
	    b'4 r | e''8 e'' e'' d''16 b' | d''8 d'' b' r16 b' |
	    b'8 b' b' fis' | e'4 r \bar "||"
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	Come down, an -- gel, and troub -- le the wa -- ter,
	Come down, an -- gel, and troub -- le the wa -- ter,
	Come down, an -- gel, and troub -- le the wa -- ter,
	And let God's saints come in.  "(God" say you "must.)"

	\set stanza = "1."
	Can -- aan land is the land for me,
	And let God's saints come in.
	Can -- aan land is the land for me,
	And let God's saints come in.
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
