% 037.ly - Score sheet for "Give up the world."
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
%  title = "Give up the world."
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
    \key f \major
    
    \override Stem.neutral-direction = #1
    \repeat volta 2
    {
      \partial 8 a'8 |
      a'8 a'16 g' f'8 f'16 g' | a'8 c'' c'' r16 g'16 |
      \break

      g'8 g'16 f' e'8 e'16 e' | g'8 bes' bes' r16 bes' |
      \break

      a'8 a'16 g' f'8 f'16 g' | a'8 c'' c'' f' |
      \break

      a'8 a' a'16 g'8 f'16 | f'4 r8
    }
    \break
    \repeat volta 2
    {
      a'8 | a'16 c''8. f''8 d'' | f''16 d''8 c''16 a'8 f' |
      \break

      g'16 g'8. e'8 e' | a'16 a'8 f'16 d'8 f'8 |
      \break

      a'16 c''8. f''8 d'' | f''16 d''8 c''16 a'8 f'16 g' |
      \break

      a'8 a' f' f' | d'4 r8
      %% FIXME: The original lacks the repeat sign at the end.
    }
  }

  \new Lyrics
  \lyricsto "" {
    \override LyricText.font-size = #0
    \override StanzaNumber.font-size = #-1

    De sun give a light¹ in de heaven all round,
    De sun give a light in de heaven all round,
    De sun give a light in de heaven all round,
    Why don't you give up de world?
    
    My brud -- der, don't you give up de world?
    My brud -- der, don't you give up de world?
    My brud -- der, don't you give up de world?
    We must leave de world be -- hind.
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
