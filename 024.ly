% 024.ly - Score sheet for "Hunting for a city."
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

% FIXME: can't switch it off for the book.
%\header
%{
%  title = "Hunting for a city."
%  composer = "trad."
%}

melody =
<<
  \context Voice
  {
    \set Staff.midiInstrument = "acoustic grand"
    \override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
	
    \autoBeamOff

    \time 4/4
    \clef violin
    \key as \major

    {
      \override Stem #'neutral-direction = #1 
      \partial 4 es'8 g' |
      as'8 as' as' as' as' as' f'[ es'] |
      as'4 as'8.[ f'16] es'4 g'8 as' |
      bes'8 bes' bes' bes' bes' bes' as'[ \stemUp <bes' des''>] \stemNeutral |
      c''4 bes' as' as'8 bes' | c''8 c'' c'' as' c''16 es''~ es''4 c''8 |
      \override Stem #'neutral-direction = #-1 
      es''4 c''8.[ as'16] bes'4 c''8. bes'16 |
      as'8 as' f' es'
      %% FIXME: Merge note heads.
      << { \stemUp c''4 bes'8.[ as'16] } << \\ { as'4 bes' } >> >> |
      as'2 r4 \bar "||"
    }
  }
  \lyricsto "" \new Lyrics
  {
    \override LyricText #'font-size = #0
    \override StanzaNumber #'font-size = #-1

    I am hunt -- in' for a ci -- ty, to stay a -- while,
    I am hunt -- in' for a ci -- ty, to stay a -- while,
    I am hunt -- in' for a ci -- ty, to stay a -- while,
    %% FIXME: This is a likely error.  At the very least the period is
    %% missing.  EDITED: be -- lie -- ver changed into be -- liev -- er.
    O be -- liev -- er got a home at las
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
      tempoWholesPerMinute = #(ly:make-moment 90 4)
      }
    }


}
