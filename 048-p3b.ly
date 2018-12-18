% 048-p3b.ly - Part of the score sheet for "Turn, sinner, turn O!"
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
%  title = "Turn, Sinner, Turn O!"
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
	\key g \major

	\set Score.currentBarNumber = #15

	% Force bar number at beginning.
	\bar ""
	g''8 g'' g'' g'' fis'' fis'' d''4 | a'4 a'8 a' b' a'4 r8 \bar "||"
    }

    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	Hark! I hear dem sin -- ner say, Turn, sin -- ner, turn O!
    }

    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	"If you" get to heaven "I'll get" there, too, Turn, sin -- ner, turn O!
    }
>>


\score
{
  \new Staff { \melody }

  \layout
  {
    indent = 0.0
    \context
    {
      \Staff
      \remove "Time_signature_engraver"
    }
  }
}


\score
{
  \new Staff { \unfoldRepeats \melody }


  \midi {
    \tempo 4 = 80
    }


}
