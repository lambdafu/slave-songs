% 030.ly - Score sheet for "Bound to go."
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
%  title = "Bound to go."
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
    \key d \major

    \override Stem.neutral-direction = #1 
    \repeat volta 2
    {
      \partial 8 a'8 | d''8 d'' d'' d'' | d''8 d'' d'' r |
      d''4 e'' | a'4 r8 a'8 | d''8 d'' d'' d'' |a'8 a' fis' r |
      b'4 a' | d'4 r8 
    }

    \repeat volta 2
    {
      \partial 2 a'8 a' fis' d' | fis'8. fis'16 fis'8 r8 |
      a'8 a'16 a' e'8 d' | e'8. e'16 e'8 r |
      a'8 a'16 a' fis'8 d'8 | fis'8. g'16 a'8 r |
      fis'16 a'8. fis'8. e'16 | d'4 r
    }
  }
  
  \new Lyrics
  \lyricsto "" {
    \override LyricText.font-size = #0
    \override StanzaNumber.font-size = #-1

    \set stanza = "1."
    I build my house up -- on de rock, O yes, Lord!
    No wind, no storm can blow 'em down, O yes, Lord!
    March on, mem -- ber, Bound to go;
    Been to de fer -- ry, Bound to go;
    Left St. He -- le -- na, Bound to go;
    Brud -- der, fare you well.
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
