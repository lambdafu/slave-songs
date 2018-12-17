% 018.ly - Score sheet for "Hunting for the Lord."
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
%  title = "Hunting for the Lord."
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
    %% Could also be C major with blue note on 3rd and 7th.
    \key c \minor

    {
      \partial 4 r16 es' es' es' |
      es'8 es' r es'16 es' | g'8 d'' r d''16 f'' |
      es''8 es'' c'' bes' | g'8 r r es'16 g' |
      \override Stem.neutral-direction = #1
      bes'8 bes' r bes'16 bes' | bes'8 g' r es'16 f' |
      g'8 g' es'8. es'16 | c'4 \bar "||"
    }
  }
  \new Lyrics
  \lyricsto "" {
    \override LyricText.font-size = #0
    \override StanzaNumber.font-size = #-1

    Hunt till you find him, Hal -- le -- lu -- jah,
    And a -- hunt -- in' for de Lord;
    Till you find him, Hal -- le -- lu -- jah,
    And a -- hunt -- in' for de Lord.
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
    \tempo 4 = 100
    }


}
