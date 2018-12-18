% 033.ly - Score sheet for "Rock o' jubilee."
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
%  title = "Rock o' jubilee"
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
    \key c \major

    \partial 8 g'8 | c''16 c'' c'' c'' d''8 f'' |
    e''8 e'' d'' r |
    e''4d''8. d''16 |
    %% EDITED: Make an in-measure ine brak here, and added a || bar.
    c''16 c'' a' a' g'8 \bar "||" \break
    \partial 8 d'' | e''16 e'' c'' c''
    <g' \tweak font-size #-4 c''>8
    <c'' \tweak font-size #-4 g'>16
    <c'' \tweak font-size #-4 g'>16 |
    a'16 a' g' g' e'8 r |
    a'4 g'8. f'16 |
    e'16 e' d' d' c'8 \bar "||"
  }

  \new Lyrics
  \lyricsto "" {
    \override LyricText.font-size = #0
    \override StanzaNumber.font-size = #-1

    \set stanza = "1."
    O rock o' ju -- bi -- lee, poor fal -- len soul,¹
    O Lord,² de rock o' ju -- bi -- lee!
    \set stanza = "2."
    O rock o' ju -- bi -- lee, and I rock 'em all a -- bout,
    O Lord, de rock o' ju -- bi -- lee!
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
