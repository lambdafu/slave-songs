% 019.ly - Score sheet for "Go in the wilderness."
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
%  title = "Go in the wilderness."
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
      \partial 8 b'8 | c''8 b' c'' d'' | b'4 r8 g'8 | a'8 g' a'
      \once \override Stem.neutral-direction = #1
      b' |
      a'4 r8 b' |
      \break
      c''8 b' c'' d'' | e''8 d'' c''8. b'16 |
      d''16 d'' d'' c'' a'8 a'16. g'32 | g'4 r8
    }
    \break
    \repeat volta 2
    {
      \override Stem.neutral-direction = #1
      d'16 d' | d'16 d' e'8 g' a' | b'8 b'16 b' b' a' g'8 |
      a'8 a'16 a' a' g' e'8 | g'8 g'16 g' g' e' d'8 |
      d'8 e' g' a' | b'8 b'16 b' b' a' g' b' |
      \override Stem.neutral-direction = #-1
      d''8 b' a' g' | g'4 r8
    }
  }
  \new Lyrics
  \lyricsto "" {
    \override LyricText.font-size = #0
    \override StanzaNumber.font-size = #-1

    I wait up -- on de Lord,
    I wait up -- on de Lord,
    I wait up -- on de Lord, my God,
    who take a -- way de sin of the world.
    
    \set stanza = "1."
    If you want to find Je -- sus, go in the wil -- der -- ness,
    Go in de wil -- der -- ness, go in de wil -- der ness,
    Mourn -- in' brud -- der, go in de wil -- der -- ness,
    I¹ wait up -- on de Lord.
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
