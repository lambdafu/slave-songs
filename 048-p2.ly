% 048-p2.ly - Part of the score sheet for "Turn, sinner, turn O!"
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
%  title = "Turn, Sinner, Turn O!"
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
	\key g \major

	\set Score.currentBarNumber = #9

	% Force bar number at beginning.
	\bar ""

	\partial 8 d''8^\markup{2d Var.} | d''8 d'' b' b' a' b' g'4 |
	b'4 b'8 b' c'' b' r a' | a'8 a' a' a' fis' e' d'4 |
	a'4 a'8 a' b' a'4 r8 \bar "||"
    }

    \lyricsto "" \new Lyrics
    {
        \override LyricText #'font-size = #0
        \override StanzaNumber #'font-size = #-1

	\set stanza = "5."
	The sun may shine, but on your grave, Turn, sin -- ner, turn O!
	The sun may shine, but on your grave, Turn, sin -- ner, turn O!
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
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 80 4)
      }
    }


}
