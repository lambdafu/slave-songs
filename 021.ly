% 021.ly - Score sheet for "The Graveyard."
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
%  title = "The Graveyard."
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
    {
      { \partial 16*6 \set fontSize = #'-4 a'16
	a' a' c''8. \set fontSize = #'0 }
      a'16 c''8 a'16 bes'8 a' | g'16 f'8. a'8 bes' | c''4. a'8 |
      bes'8 a' r c''16 d'' | es''8 d''16 d'' c''8 a' |
      g'16 bes'8. a'4 | f'8 a' g'8. a'16 | f'4 r8 \bar "||"

      \break
      \partial 8 a'8 |
      c''8 a'16 a' bes' bes' a' a' | g'16 f'8. a'8 bes' |
    }
  }
  \new Lyrics
  \lyricsto "" {
    \override LyricText.font-size = #0
    \override StanzaNumber.font-size = #-1

    % FIXME: The extra white space is intended to avoid overlap with
    % stanza number.
    "(Brud" -- der Sam -- "my)     "
    % FIXME: Overlaps with end of "Sammy".
    \set stanza = "1."
    Who gwine to lay dis bo -- dy, Mem -- ber,
    O, shout glo -- ry.¹
    And -- a who gwine to lay dis bo -- dy,
    Oh ring Je -- ru -- sa -- lem.
    \set stanza = "2."
    O call all de mem -- ber to de grave -- yard.  Mem -- "ber, &c."
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
