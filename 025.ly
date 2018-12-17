% 025.ly - Score sheet for "Gwine follow."
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
%  title = "Gwine follow."
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
    \key a \major
    
    \repeat volta 2
    {
      \override Stem.neutral-direction = #1 
      \partial 8 a'16 a' | a'16 cis''8 cis''16 e' e' cis'8 |
      d'16 e'8. gis'8 gis' | a'16 b'8. r8 gis'8 |
      a'16 b'8. r8 gis'16 gis' | a'16 cis''8 cis''16 e' fis' cis' cis' |
      d'16 e'8. d''8 d''8 | cis''8
      << { \stemUp cis''8 b'16 b'8. \stemNeutral }
	 << \\ { \stemDown \autoBeamOff \set fontSize = #'-4
		 a'8 gis'8. gis'16 } >> >> |
      a'4 r8
    }
    \break
    \repeat volta 2
    {
      e'8 | a'8 b' cis'' d''16 d'' |
      e''16 e'' e'' cis'' d''8 d''16 d'' |
      cis''16 cis'' cis'' cis'' cis''8 a'16 cis''16 |
      \override Stem.neutral-direction = #-1
      b'16 cis''16 b' gis' e'8 e' |
      \override Stem.neutral-direction = #1
      a'8 b' cis'' d''16 d'' |
      e''16 e'' e'' cis'' d''8 d''16 d'' |
      \override Stem.neutral-direction = #-1
      cis''8 cis'' b'16 b'8. | a'4 r8
    }
  }
  \new Lyrics
  \lyricsto "" {
    \override LyricText.font-size = #0
    \override StanzaNumber.font-size = #-1

    Tit -- ty Ma -- ry, you know I gwine fol -- low,
    I gwine fol -- low, gwine fol -- low,
    Brud -- der Wil -- liam, you know I gwine to fol -- low,
    For to do my Fa -- der will.
    'Tis well and good I'm a -- com -- in' here to -- night,
    I'm a -- com -- in' here to -- night,
    I'm a com -- in' here to -- night,
    'Tis well and good I'm a -- com -- in' here to -- night,
    For to do my Fa -- der will.
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
