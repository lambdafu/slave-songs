% 048-p3.ly - Score sheet for "Turn, sinner, turn O!"
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

	\set Score.currentBarNumber = #17

	% Force bar number at beginning.
	\bar ""

	d''4^\markup{1st Var.} b'16 b' b'8 a' b' g'4 | b'4 b'8 b' c'' b'4 r8 |
	g'4 g'16 g' g'8 a' a' fis'4 | a'4 a'8 a' b' a'4 r8 \bar "||"
    }

    \lyricsto "" \new Lyrics
    {
        \override LyricText #'font-size = #0
        \override StanzaNumber #'font-size = #-1

	\set stanza = "8."
	O sin -- ner, you make mis -- take, Turn, sin -- ner, turn O!
	O sin -- ner, you make mis -- take, Turn, sin -- ner, turn O!
    }

    \lyricsto "" \new Lyrics
    {
        \override LyricText #'font-size = #0
        \override StanzaNumber #'font-size = #-1

	\set stanza = "9."
	While de lamp hold out to burn, Turn, sin -- ner, turn O!
	While de lamp hold out to burn, Turn, sin -- ner, turn O!
    }

    \lyricsto "" \new Lyrics
    {
        \override LyricText #'font-size = #0
        \override StanzaNumber #'font-size = #-1

	\set stanza = "10."
	De wile' sin -- ner may re -- turn, Turn, sin -- ner, turn O!
	De wile' sin -- ner may re -- turn, Turn, sin -- ner, turn O!
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
