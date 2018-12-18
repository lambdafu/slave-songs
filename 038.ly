% 038.ly - Score sheet for "Jesus on the Waterside."
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
%  title = "Jesus on the Waterside."
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
    \key es \major

    \tupletUp
    \repeat volta 2
    {
      bes'8 bes'16 bes'16 bes'8 d'' | es''8. es''16 d''4 |
      bes'8 bes'16 bes'16 bes'8 d'' | c''8. c''16 bes'8 r |
      bes'8 bes'16 bes' bes'8 d'' |
      \override Stem.neutral-direction = #1
      es''8. g'16 g'8 bes'8( | bes'8)
      %% EDITED: Merged the two notes.  FIXME?
      bes'8 g'16 g' es' es' | f'8 <g' f'>8 es'8 r
    }
    \break
    \repeat volta 2
    {
      g'4 f'16 f' es'8 | \tuplet 3/2 { es''8 c'' bes' } g' r |
      g'4 f'16 f' es'8 | \tuplet 3/2 { g'8 f' es' } c'8 r |
      g'4 f'16 f' es' es'' | c''16 bes' g'8 r4 |
      bes'8 bes' g'16 g' es' es' | f'8 <g' f'>8 es'4
    }
  }

  \new Lyrics
  \lyricsto "" {
    \override LyricText.font-size = #0
    \override StanzaNumber.font-size = #-1

    Heaven bell a -- ring, I know de road,
    Heaven bell a -- ring, I know de road,
    %% EDITED: Changed ';' at the end to ','.
    Heaven bell a -- ring, I know de road,
    Je -- sus sit -- tin' on de wa -- ter -- side.

    Do come a -- long, do let us go,
    Do come a -- long, do let us go,
    Do come a -- long, do let us go,
    Je -- sus sit -- tin' on de wa -- ter -- side.
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
