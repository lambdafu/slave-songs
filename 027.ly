% 027.ly - Score sheet for "Heaven bell a-ring."
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
%  title = "Heaven bell a-ring"
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
    
    {
      \partial 8 d''8 | e''8 d'' c'' b' |
      a'16 g'8. g'8 <g' d'>16 <g' d'> |
      d'8 g'16 g' g'8 <d' b'> |
      << { \stemUp a'8[ b'] \stemNeutral } << \\ { d'4 } >> >> <d' g'>8 |
      \bar "||" \break
      
      \override Stem #'neutral-direction = #1 
      \partial 8 g'8 | d'8 g' g' b' | a'16 g'8. b'8 b'16 b' |
      d'8 g'16 g'16 g'8 e' | g'4 d'8 \bar "||" \break
	    
      \partial 2
      d'16^\markup { "" \raise #1 \italic { Variation second. } }
      b'8. d'16 b'8. | a'8 g'8 b'8 \bar "||"
      \partial 2
      d'16 b'8. d'16 b'8. | a'8 b'8 g'8 \bar "||"
    }
  }
  \lyricsto "" \new Lyrics
  {
    \override LyricText #'font-size = #0
    \override StanzaNumber #'font-size = #-1

    \set stanza = "1."
    My Lord, my Lord, what shall I do? 
    And a heav'n bell a -- ring and praise God.
    
    "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" "" ""
    Tim -- my, Tim -- my, or -- phan boy.
    Ro -- bert, Ro -- bert, or -- phan child.
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
