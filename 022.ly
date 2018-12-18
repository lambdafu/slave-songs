% 022.ly - Score sheet for "John, John of the Holy Order."
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

% FIXME: can't switch it off for the book.
%\header
%{
%  title = "John, John, of the Holy Order."
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

    {
      bes'4 bes'8 bes'16 c''16 |
      \override Stem.neutral-direction = #1
      bes'8. as'16 g'8 bes'8 |
      bes'16 bes' bes' bes' es''8
      \override Stem.neutral-direction = #-1
      bes' |
      \override Stem.neutral-direction = #1
      bes'8( as') g' r |
      \break
      as'4 as'8 as'16 bes' | as'8. g'16 f'8 as' |
      \override Stem.neutral-direction = #-1
      as'16 as' as' as' c''8 bes' |
      \override Stem.neutral-direction = #1
      bes'8( as') g' r |
      \break
      \override Stem.neutral-direction = #-1
      bes'4 bes'8 bes'16 c'' |
      \override Stem.neutral-direction = #1
      bes'8. as'16 g'8 bes'8 |
      bes'16 bes' bes' bes' es''8
      \override Stem.neutral-direction = #-1
      bes' |
      \override Stem.neutral-direction = #1
      bes'8( as') g' bes' |
      \break

      c''8. as'16 f'8. d'16 |
      es'8 bes'8
      << { \stemUp c''16[ bes'] \stemNeutral } << \\ c''8 >> >> as'8 |
      g'4 r8 g' | g'4 r8 bes' |
      \break
      \override Stem.neutral-direction = #-1
      c''8. bes'16 as'8 g' | f' r as' f' |
      \override Stem.neutral-direction = #1
      f'8 f' as' bes' | c''8. d''16 es''8 c''8 |
      \break
      bes'8. as'16 g'8 f' | es'4 r |
      << { \stemUp bes'16 bes' bes'8 bes'16 c''8. \stemNeutral }
	 << \\ { \autoBeamOff \set fontSize = #'-4 g'16 g' g'8 g' bes' } >> >> |
      es'8 es' es' r |
      \break
      f'8 f' f' r | g'8 g' g' r |
      \override Stem.neutral-direction = #-1
      bes'8 bes' bes'16 c''8. | es'8 es' es'8. es'16 |
      \break
      \override Stem.neutral-direction = #1
      f'16 f' f' f' bes'8 g' | es'4 es'8 r | \bar "||"
    }
  }
  \new Lyrics
  \lyricsto "" {
    \override LyricText.font-size = #0
    \override StanzaNumber.font-size = #-1

    John, John, wid de ho -- ly or -- der,¹
    Sit -- tin' on de gol -- den or -- der;
    John, John, wid de ho -- ly or -- der,
    Sit -- tin' on de gol -- den or -- der;
    John, John, wid de ho -- ly or -- der,
    Sit -- tin' on de gol -- den or -- der,
    To view de pro -- mised land.
    O Lord, I weep, I mourn,
    Why don't you move so slow?
    I', a hunt -- in' for some guard -- ian an -- gel
    Gone a -- long be -- fore.
    Ma -- ry and Mar -- ta, feed my lamb,²
    feed my lamb, feed my lamb;
    Si -- mon Pe -- ter, feed my lamb,
    a -- sit -- tin' on de gol -- den or -- der.
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
