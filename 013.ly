% 013.ly - Score sheet for "Happy Morning."
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
%  title = "Happy Morning."
%  composer = "trad."
%}

melody =
<<
  \context Voice
  {
    \set Staff.midiInstrument = "acoustic grand"
    \override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
	
    \autoBeamOff
    
    \time 4/4
    \clef violin
    \key g \major
    
    \repeat volta 2
    {
      b'4 d'' d''2 | c''4 d''2 r4 | fis'4 a' a'2 | fis'4
      <d' \tweak #'font-size #-4 a'>
      d'' d'' | 
      <b' \tweak #'font-size #-4 d''>2
      <g' \tweak #'font-size #-4 b'>4.
      g'8 |
      d'2 fis'4 fis' | g'2.( fis'4) | g'2
    }
    \break
    \repeat volta 2
    {
      b'4 d'' | c''2.( b'4) |
      \override Stem #'neutral-direction = #1
      a'2 b'4. b'8 | a'2.( fis'4) |
      \break
      \stemUp d'4
      << d''4 << \\ { s16 \stemDown \set fontSize = #'-4 c''4*3/4 } >> >>
      << d''4 << \\ { s16 \stemDown \set fontSize = #'-4 c''4*3/4 } >> >>
      << d''4 << \\ { s16 \stemDown \set fontSize = #'-4 c''4*3/4 } >> >>
      << d''2 << \\ \stemDown \set fontSize = #'-4 b'2 >> >>
      << { b'4 g' }
	 << \\ { \set fontSize = #'-4 g'4. g'8 } >> >> |
      \stemNeutral d'2 fis'4 fis' | g'2.( fis'4) | g'2 r2
    }
  }
  \lyricsto "" \new Lyrics
  {
    \override LyricText #'font-size = #0
    \override StanzaNumber #'font-size = #-1

    Weep no more, Mar -- ta,
    Weep no more, Ma -- ry,¹
    Je -- sus rise from de dead,
    Hap -- py² morn -- ing.
    
    Glo -- rious³ morn -- ing,
    Glo -- rious morn -- ing,
    %% EDITED: Sa -- viour changed into Sav -- iour.
    My Sav -- iour rise from de dead,
    Hap -- py morn -- ing.
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
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 82 4)
      }
    }


}
