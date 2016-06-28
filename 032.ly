% 032.ly - Score sheet for "Sail, O believer."
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
%  title = "Sail, O believer."
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
    
    \override Stem #'neutral-direction = #1 
    d''8 <d'' g''>4 <b' e''>8 | d''16 <e'' g''>16 d''8 r4 |
    g'8 b'4 d''8 | d''16[ c''] a'4 r8 |
    
    a'8 c''4 a'8 | fis'16 a' d'8 r4 |
    b16[ d'] g'4 b'8 | a'16[ b'] g'4 r8 \bar "||"
  }
  
  \lyricsto "" \new Lyrics
  {
    \override LyricText #'font-size = #0
    \override StanzaNumber #'font-size = #-1

    Sail, O be -- liev --er, sail,
    Sail o -- ver yon -- der;
    Sail, O my brud -- der, sail,
    Sail o -- ver yon -- der.
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
