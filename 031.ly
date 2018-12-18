% 031.ly - Score sheet for "Michael row the boat ashore."
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
%  title = "Michael row the boat ashore."
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

    \override Stem.neutral-direction = #1
    \partial 4 es'8 g' | bes'8. <g' bes'>16 bes'8 <bes' c''>8 |
    bes'8 r g' bes' | c''2 | bes'8 r \bar "||" \break

    \partial 4 <g' bes'>8 <bes' es''> |
    <bes' es''>8. <g' bes'>16 <as' bes'>8 g' |
    << { \stemUp f'8 bes'4 bes'8 \stemNeutral }
       << \\ { \autoBeamOff \stemDown f'4 es'8 f'8 } >> >> |
    g'4.( f'8) | es'4 \bar "||"
  }

  \new Lyrics
  \lyricsto "" {
    \override LyricText.font-size = #0
    \override StanzaNumber.font-size = #-1

    \set stanza = "1."
    Mich -- ael row de boat a -- shore, Hal -- le -- lu -- jah!
    \set stanza = "2."
    Mich -- ael boat a gos -- pel boat, Hal -- le -- lu -- jah!
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
