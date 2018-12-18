% 002.ly - Score sheet for "Jehovah, Hallelujah."
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
%  title = "Jehovah, Hallelujah."
%  composer = "trad."
%}

melody =
<<
  \context Voice
  {
    \set Staff.midiInstrument = "acoustic grand"
    \override Staff.VerticalAxisGroup.minimum-Y-extent = #'(0 . 0)

    \autoBeamOff

    \time 3/4
    \clef violin
    \key f \major

    \repeat volta 2
    {
      \partial 4 a'4 |
      c''4 a' c''8 c'' | d''4 bes' d'' | c''4 a' a' | g'2 e'4 |
      f'4 f' bes'8 d'' | c''4 c'' a' |
      \override Stem.neutral-direction = #1
      bes'4 a' g' f'2
    }
    \break
    \repeat volta 2
    {
      c'4 | a'4 g' e'8 e' | f'2 g'8 a' | bes'4 a' g'8 g' | e'2
      e'4 | f'8 f' f'4 bes'8[ d''] | c''8 c'' c''4 a'4 |
      bes'8 bes' a'4 g' | f'2
    }
  }

  \new Lyrics
  \lyricsto "" {
    \override LyricText.font-size = #0
    \override StanzaNumber.font-size = #-1

    Je -- hov -- iah, Hal -- le -- lu -- jah,
    De Lord is per -- wide,¹
    Je -- hov -- iah, Hal -- le -- lu -- jah,
    De Lord is per -- wide.
    De fox -- es have -- a hole,
    an' de bir -- dies have -- a nest,
    De Son of Man he dun -- no² where
    to lay de wea -- ry head.
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
    \tempo 4 = 160
    }


  }
