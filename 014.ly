% 014.ly - Score sheet for "No man can hinder me."
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
%  title = "No man can hinder me."
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

    {
      \partial 8 c''8 |
      e''4 c'' | d''4 e'' |
      %% FIXME: Merge note heads, make down stems smaller.
      << { \stemUp a'4 a'8 g'8  \stemNeutral }
	 << \\ { \autoBeamOff \stemDown a'8 a'4 g'8 } >> >> |
      a'8 b'8 c''8 c'' | e''4 c'' |
      g'4 e' | g'4 e'8 c' | d'8 d' c'4 | \bar "||"
      e''8 e'' c'' c'' | d''8 d'' e''4 |
      a'8 a' a' g' | a'8 b' c''4 | e''8 e'' c'' c'' |
      g'8 g'8 e'4 | g'8 g' e' c' | d'8 d' c'
    }
    \repeat volta 2
    {
      c''8 |
      e''4 c'' | d''4 e'' | a'8 a'4 g'8 |
      a'8 b' c'' c'' | e''4 c'' | g' e' |
      g'8 e'4 c'8 | d'8 d' c'4
    }
  }
  \new Lyrics
  \lyricsto "" {
    \override LyricText.font-size = #0
    \override StanzaNumber.font-size = #-1

    %% EDITED: Sa -- viour changed into Sav -- iour.
    Walk in, kind Sav -- iour, No man can hin -- der me!
    Walk in, sweet Je -- sus, No man can hin -- der me!
    \set stanza = "2."
    See what won -- der Je -- sus done,
    O no man can hin -- der me!
    See what won -- der Je -- sus done,
    O no man can hin -- der me!
    O no man, no man, no man can hin -- der me!
    O no man, no man, no man can hin -- der me!
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
