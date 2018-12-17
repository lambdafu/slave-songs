% 026.ly - Score sheet for "Lay this body down."
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
%  title = "Lay this body down."
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
    \key f \minor
    
    {
      c''2 | es''16 es''16~ es''4 r8 |
      \once \override Stem.neutral-direction = #1 
      bes'2 | as'16 g'16~ g'4 es''8 |
      c''16 es''8. c''8 bes' | g'16 f'16~ f'4 r8 |
      c'8 f' g'16 as'8. | f'4 r4 | \bar "||"
    }
  }
  \new Lyrics
  \lyricsto "" {
    \override LyricText.font-size = #0
    \override StanzaNumber.font-size = #-1

    \set stanza = "1."
    O grave -- yard,
    O grave -- yard,
    I'm walk -- in' troo de grave -- yard;
    Lay dis bo -- dy down.
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
