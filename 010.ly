% 010.ly - Score sheet for "The Trouble of the World."
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

\version "2.10.0"

%\header
%{
%  title = "The Trouble Of the World"
%  composer = "trad."
%}

melody =
<<
  \context Voice
  {
    \set Staff.midiInstrument = "acoustic grand"
    \override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
	
    \autoBeamOff

    \time 2/4
    \clef violin
    \key g \major

    \repeat volta 2
    {
      \partial 4*2
      \tupletUp
      \override Stem #'neutral-direction = #1
      \times 2/3 { d''8 d'' d'' } b'8. g'16 |
      \override Stem #'neutral-direction = #-1
      g'8 g' \times 2/3 { d'8 d' d'' } |
      d''8 b' a'4 | \times 2/3 { fis'8 fis' fis' }
      \times 2/3 { d'8 d' r16 d' } | g'8 a' b'[ c''] |
      d''8 d''16 b' c''8 c'' |
      \override Stem #'neutral-direction = #1
      b'4 a'8 a' | g'4 r8
      \override Stem #'neutral-direction = #-1
    }
    \repeat volta 2
    {
      \partial 8 d'8 | g'8 g'16 g' g'8 g'16 g' | g'16 g' g' g' g'8 g'8( |
      e'2) | d'16 d' d' d' d'8 d' | a'8 a'16 a' fis'8 d'16 d' |
      g'16 g' g' g' c''8 c'' |
      \override Stem #'neutral-direction = #1
      b'4 a'8 a' | g'4 r |
    }
  }
  
  \lyricsto "" \new Lyrics
  {
    \override LyricText #'font-size = #0
    \override StanzaNumber #'font-size = #-1

    \set stanza = "1."
    I want to be¹ my Fa -- der's chil' -- en,
    I want to be my Fa -- der's chil' -- en,
    %% FIXME: Fa -- der's instead Fa -- der?
    I want to be my Fa -- der chil' -- en,
    Roll, Jor -- dan, roll.
    O say,² ain't you done wid de
    trou -- ble ob de world,
    Ah! __ trou -- ble ob de world, Ah!
    Say ain't you done wid de trou -- ble ob de world,
    Ah Roll, Jor -- dan, roll.
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

% Tempo is about 4=100 to 4=120.
  
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 120 4)
      }
    }


}
