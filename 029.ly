% 029.ly - Score sheet for "Rain fall and wet Becca Lawton."
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
%  title = "Rain fall and wet Becca Lawton."
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
      d''4 d''8. b'16 | d''8 d''16 d'' d''8 b' |
      d''2(~ | d''4 b')|
      \override Stem.neutral-direction = #1
      c''4 c''8. c''16 |
      b'8 a'16 a' g'8 a' | b'2 | g'16 g' g'8 e' d' \break
    }
    
    \repeat volta 2
    {
      c''8 c'' a' c''16 c'' | b'8 a' g' a' |
      b'2 | g'16 g' g'8 e' d'
    }
  }
  \new Lyrics
  \lyricsto "" {
    \override LyricText.font-size = #0
    \override StanzaNumber.font-size = #-1

    Rain fall and wet¹
    Bec -- ca Law -- ton,² Oh __
    Rain fall and wet Bec -- ca Law -- ton, Oh!
    Brud -- der³ cry ho -- ly!
    \set stanza = "1."
    Been⁴ back ho -- ly,
    I must come slow -- ly;
    Oh!  Brud -- der cry ho -- ly!
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
