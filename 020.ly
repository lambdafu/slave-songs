% 020.ly - Score sheet for "Tell my Jesus ``Morning.''"
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
%  title = "Tell My Jesus ``Morning.''"
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
    
    \override Stem.neutral-direction = #1 
    {
      b'8. a'16 g'8 a' | b'16 a'8. g'8 r8 |
      d'8 d' e' g' | a'16 b' a'8 r a' |
      a'8 a' a' g'16 a' | b'8
      << { \stemUp a'8 \stemNeutral }
	 << \\ \set fontSize = #'-4 \stemDown g'8 >> >>
      << { \stemUp g'8 \stemNeutral }
	 << \\ \set fontSize = #'-4 \stemDown e'8 >> >>
      g' | d'8 d' e' g' | g'16 a' g'8 r \bar "||"
    }
  }
  \new Lyrics
  \lyricsto "" {
    \override LyricText.font-size = #0
    \override StanzaNumber.font-size = #-1

    \set stanza = "1."
    In de morn -- in' when I rise,
    Tell my Je -- sus hud -- dy, oh;¹
    I wash my hands in de morn -- in' glo -- ry,
    Tell my Je -- sus hud -- dy, oh.
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
