% 034.ly - Score sheet for "Stars begin to fall."
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
%  title = "Stars begin to fall."
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
    \key f \major

    \repeat volta 2
    {
      \partial 8
      <f' \tweak #'font-size #-4 c''>8 |
      <f' \tweak #'font-size #-4 a'>8
      <a' \tweak #'font-size #-4 c''>8
      c''8 c'' |
      <c'' \tweak #'font-size #-4 a'>8
      c''8 c'' r |
      bes'8. c''16 d''8 c'' |
      \override Stem #'neutral-direction = #1
      bes'8 a' g' c'' |
      %% FIXME: I put the stems up in this measure.
      \stemUp
      <a' \tweak #'font-size #-4 c''>16
      <a' \tweak #'font-size #-4 c''>16
      <a' \tweak #'font-size #-4 c''>16
      <a' \tweak #'font-size #-4 c''>16
      <g' \tweak #'font-size #-4 a'>8
      <g' \tweak #'font-size #-4 a'>8
      \stemNeutral |
      \override Stem #'neutral-direction = #1
      f'8( a') bes' bes' | a'4 g'16 g'8 f'16 | f'4 r8
    }
    \repeat volta 2
    {
      \partial 2 a'4. g'16 g' | f'8 c'' c'' c'' |
      c''4. a'16 a' | g'8 c'' c'' c'' | a'4. g'16 g' |
      f'8 a' bes' bes' | a'4 g'16 g'8 f'16 | f'4 r4
    }
  }
  
  \lyricsto "" \new Lyrics
  {
    \override LyricText #'font-size = #0
    \override StanzaNumber #'font-size = #-1

    I tink I hear my brud -- der¹ say,
    Call de na -- tion great and small;
    I look -- ee on de God's right hand,
    When de stars be -- gin to fall.
    
    Oh what a mourn -- in' "(sis" -- "ter),"
    Oh what a mourn -- in' "(brud" -- "der),"
    Oh what a mourn -- in',
    When de stars be --gin to fall.
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
      tempoWholesPerMinute = #(ly:make-moment 80 4)
      }
    }


}
