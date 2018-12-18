% 015.ly - Score sheet for "Lord, remember me."
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
%  title = "Lord, remember me."
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

    \repeat volta 2
    {
      \partial 8 f'16[ g'] |
      a'8 a' a' f'16[ g'] | a'8 a' a' f'16 g' | a'8 a' a' a' | g'4 r8 g' |
      g'8 g' g' f'16 g' | a'8 a' f' c'16 c' | c'8 c' d' f' | f'4 r8
    }
    \break
    \repeat volta 2
    {
      f'8 | f'8. f'16 a'8 c'' | f''4. e''8 |
      d''8. d''16 d''8 f'' | c''4 r8 c'' |
      d''8 c'' a' g'16 g' | a'16[ g'] a'[ g'] f'8[ d'] |
      c'8. c'16 d'8 f' | f'4 r8
    }
  }
  \new Lyrics
  \lyricsto "" {
    \override LyricText.font-size = #0
    \override StanzaNumber.font-size = #-1

    Oh Deat' he is a lit -- tle man,
    And he goes from do' to do',
    He kill some souls and he woun -- ded some,
    And he lef' some souls to pray.
    Oh¹ lord, re -- mem -- ber me,
    Do, Lord, re -- mem -- ber me;
    Re -- mem -- ber me² as de year roll round,
    Lord, re -- mem -- ber me.
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
