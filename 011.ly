% 011.ly - Score sheet for "There's a meeting here to-night."
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
%  title = "There's a meeting here to-night."
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
    \key es \major
	
    \repeat volta 2
    {
      \partial 8 bes'8 |
      es''8 es'' es'' es'' | d''8
      <bes' \tweak font-size #-4 f''>4 bes'8 |
      c''8. c''16 c'' es''8. | c''8 bes'4 bes'8 |
      es''8 es'' bes' g' |
      \override Stem.neutral-direction = #1
      bes'16 g'16~ g'4 es'16 f'16 |
      g'16 g'8. f'8. f'16 | es'4 r8
    }
    \break
    \repeat volta 2
    {
      es'16 f'16 |
      g'8 g' g' g' | g'8
      << { \stemUp bes'4 g'16 g'16 \stemNeutral }
	 << \\ { \autoBeamOff \set fontSize = #'-4 \stemDown g'8 g'8 
		 \set fontSize = #'0 g'16 g'16 } >> >> |
      as'8 as' as' as' | as'8
      << { \stemUp bes'4 as'16 as'16 \stemNeutral }
	 << \\ { s32 \autoBeamOff \set fontSize = #'-4 \stemDown as'8*3/4 as'8
		 \set fontSize = #'0 as'16 as'16 } >> >> |
      g'8 g' g'8. g'16 |
      \override Stem.neutral-direction = #1
      bes'4. g'8 | f'8. bes'16 bes'8. g'16 | es'4 r8
    }
  }
  \new Lyrics
  \lyricsto "" {
    \override LyricText.font-size = #0
    \override StanzaNumber.font-size = #-1

    \set stanza = "1."
    I take my text in Mat -- tew, and by de Re -- ve -- la -- tion, I
    know you by your gar -- ment, Dere's a meet -- ing here to -- night.
    Dere's a meet -- ing here to -- night,
    \repeat fold 2 {} \alternative { { Oh! Dere's a }
				     { \override LyricText.font-size = #0 "(Brudder" To -- "ny,)" } }
    meet -- ing here to -- night, 
    \repeat fold 2 {} \alternative { { Oh! Dere's a }
				     { \override LyricText.font-size = #0 "(Sister" Ri -- "na,)" } }
    meet -- ing here to -- night, I hope to meet a -- gain.
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
