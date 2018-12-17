% 017.ly - Score sheet for "Religion so sweet."
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
%  title = "Religion so sweet."
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
    \key c \minor
    
    \repeat volta 2
    {
      \partial 8 c''8 |
      c''8 c''4 bes'8 | es''16 c''8. r8
      <c'' \tweak font-size #-4 g'>16
      <c'' \tweak font-size #-4 g'>16 |
      c''16 c''8. es''4 | c''4 r8 c''16 c'' |
      c''16 c'' c''8 c''8. bes'16 | bes'16 c'' g'8 r es'16 f' |
      g'16 g'8. es'4 | c'4 r8
    }
  }
  \new Lyrics
  \lyricsto "" {
    \override LyricText.font-size = #0
    \override StanzaNumber.font-size = #-1

    \set stanza = "1."
    O walk Jor -- dan long road,
    And re -- li -- gion so sweet;
    O re -- li -- gion is good for a -- ny -- ting,
    And re -- li -- gion so sweet.
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
