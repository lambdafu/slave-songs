% 001.ly - Score sheet for "Roll, Jordan, roll."
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

% \header
% {
%   title = "Roll, Jordan, roll."
%   composer = "trad."
% }


melody =
<<
  \context Voice = "one"
  {
    \set Staff.midiInstrument = "acoustic grand"
    \override Staff.VerticalAxisGroup.minimum-Y-extent = #'(0 . 0)

    \autoBeamOff
 
    \time 2/4
    \clef violin
    \key d \major

    \repeat volta 2
    {
      \partial 8 a'8 |
      d''16 d''8. d''16 d'' fis'' e'' |
      \override Stem.neutral-direction = #1
      d''8 d'' d'' a'16 b' |
      \override Stem.neutral-direction = #-1
      c''16 c'' c''8 b' b' |

      \override Stem.neutral-direction = #1
      a'4( fis') | g'4 g'8 a' | fis'4 d'8 fis' |
      %% Variation
      %% \tag #'var { a'4( f') | g'4 g'8 a' | f'4 d'8 f' | }
      e'4 cis'8 cis' | d'4 r8
    }
    \repeat volta 2
    {
      fis'8 | d'8. d'16 fis'8 a' | b'4 r8 b' |
      a'8. a'16 fis'8 d' | e'8 a'4 fis'8 |

      d'8. e'16 fis'8 g' | a'16 b' a'4 g'16 g' |
      fis'16 fis' fis'8 e'8 e'8 | d'4 r8
    }
  }

  \new Lyrics
  \lyricsto "" {
    \override LyricText.font-size = #0
    \override StanzaNumber.font-size = #-1

    \set stanza = "1."
    My brud -- der¹ sit -- tin' on de tree of life,
    An' he year -- de when Jor -- dan roll;
    Roll, Jor -- dan, Roll, Jor -- dan, Roll, Jor -- dan, roll!
    O march de an -- gel march, O march de an -- gel march;
    O my soul a -- rise in Heav -- en, Lord,
    For to year -- de when Jor -- dan roll.
  }
>>


  \score
  {
    \new Staff { \melody }

    \layout { indent = 0.0
left-margin = 0\cm }
  }

  \score
  {
    \new Staff { \unfoldRepeats \melody }
    
    
  \midi {
    \tempo 4 = 65
    }


  }
