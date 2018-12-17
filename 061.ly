% 061.ly - Score sheet for "I Want To Go Home."
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
%  title = "I Want To Go Home"
%  composer = "trad."
%}

melody =
<<
     \context Voice
    {
	\set Staff.midiInstrument = "acoustic grand"
	\override Staff.VerticalAxisGroup.minimum-Y-extent = #'(0 . 0)
	
	\autoBeamOff

	\time 4/4
	\clef violin
	\key bes \major
	{
	    d''1 | bes' \bar "||" \break
	    d''1 | c''1 | a' \bar "||" \break
	    c''1 | bes' \bar "||"
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

%	\override LyricSpace.minimum-distance = #5.0
	\override LyricText.self-alignment-X = #LEFT

%% FIXME: align left end of the notes to the lyrics.
	\set stanza = "1."
	"Dere's no rain to" "wet you."
	"O" "yes, I want to go" "home,"
	"Want to go" "home."
    }
>>


\score
{
  \context ChoirStaff << \new Staff { \melody } >>

  \layout
  {
    indent = 0.0
    \context
    {
      \Lyrics
      \consists Bar_engraver
      %% need procedure, since lyrics doesn't have a staff_sym
      %% engraver.
      \override BarLine.bar-extent = #'(-1.5 . 1.5)
    }
%     \context
%     {
%       \Staff
%       \remove "Bar_engraver"
%     }
  }
}

\score
{
  \new Staff { \unfoldRepeats \melody }

  
  \midi {
    \tempo 4 = 82
    }


}
