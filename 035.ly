% 035.ly - Score sheet for "King Emanuel."
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
%  title = "King Emanuel."
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
    \repeat volta 2
    {
      \partial 4 c''8 c'' |
      b'8. b'16 a'8. a'16 | g'4 fis'8 g' |
      a'8. a'16 a'8. a'16 | a'8 d''4. |
      b'8 g' a' g' | d'4 a' | g'4. fis'8 | g'4
    }
    \break
    \override Stem.neutral-direction = #-1
    \repeat volta 2
    {
      b'8 c'' | d''8. d''16 d''8 d'' | d''4 e''8 d'' |
      \override Stem.neutral-direction = #1
      b'8. b'16 a'8 g' | e'8 r a'4 | g'4. a'8 |
      \override Stem.neutral-direction = #-1
      b'4 c''8 c'' |
      <b' \tweak font-size #-4 d''>8.
      <b' \tweak font-size #-4 d''>16
      a'8. a'16 | g'4
    }
  }
  
  \new Lyrics
  \lyricsto "" {
    \override LyricText.font-size = #0
    \override StanzaNumber.font-size = #-1

    \set stanza = "1."
    O my King E -- ma -- nu -- el, my E -- ma -- nu -- el a -- bove,
    Sing glo -- ry to my King E -- ma -- nu -- el.
    \set stanza = "2."
    If you walk de gold -- en street, and you join de gold -- en band,
    Sing glo -- ry be to my King E -- ma -- nu -- el.
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
