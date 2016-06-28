% 006.ly - Score sheet for "Wrestle on, Jacob."
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
%  title = "Wrestle on, Jacob."
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
    \key bes \major
    
    \repeat volta 2
    {
      r8 f' bes' bes' | bes'16 d'' c'' bes' a'8 bes' |
      c''8. c''16 g'8 g' | a'8 a'
      \override Stem #'neutral-direction = #1
      bes'4
      \override Stem #'neutral-direction = #-1
    }
    \break
    \repeat volta 2
    {
      f'4. f'8 | d'8 f' bes' c'' | d''4. bes'16 c'' | d''8 c''4 r8 |
      \break
      f'4. f'8 | d'8 f' es'' es'' | d''8 d'' c'' c'' | bes'4 r |
    }
  }
  
  \lyricsto "" \new Lyrics
  {
    \override LyricText #'font-size = #0
    \override StanzaNumber #'font-size = #-1

    \set stanza = "1."
    I hold my brud -- der¹ wid a tremb -- lin' han',
    De Lord will bless my soul.²
    Wrastl' on, Ja -- cob,
    Ja -- cob, day is a -- break -- in',
    Wrastl' on, Ja -- cob,
    Oh he³ would not let him go.
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
    
    %% Tempo is about 4=100 to 4=120.
    
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 96 4)
      }
    }


  }
