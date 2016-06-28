% 016.ly - Score sheet for "Not weary yet."
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

%\header
%{
%  title = "Not weary yet."
%  composer = "trad."
%}

melody =
<<
  \context Voice
  {
    \set Staff.midiInstrument = "acoustic grand"
    \override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
	
    \autoBeamOff
    
    \time 2/4
    \clef violin
    \key es \major

    \repeat volta 2
    {
      \partial 8 bes'8 |
      \once \override Stem #'direction = #-1
      <bes' \tweak #'font-size #-4 g'>8
      bes'8 bes' c'' | bes'8 d''4( f''8) |
      es''8 d'' c'' c'' | bes'4 r8
      <g' \tweak #'font-size #-4 d''>8 |
      <as' \tweak #'font-size #-4 es''>8
      <as' \tweak #'font-size #-4 d''>8
      <as' \tweak #'font-size #-4 c''>8
      <as' \tweak #'font-size #-4 c''>8 |
      <g' \tweak #'font-size #-4 bes'>8
      <g' \tweak #'font-size #-4 bes'>8
      <g' \tweak #'font-size #-4 bes'>8.
      g'16 |
      as'8 g' f' f' |
      
      %% The transparent stem hides the eight's stem.  The note head
      %% collapses with the one in the other voice (giving a spurious warning).
      %% The result is that we can assign the text as if it were one voice.
      %% The \stemDown for the rest makes it appear below the other voice.
      << { \stemUp \autoBeamOff \once \override Stem #'transparent = ##t es'8 \stemUp bes'16 bes' bes'8 bes' }
	 << \\ { \stemUp es'4 \stemDown r8 \stemNeutral } >> >> |
    }
  }
  \lyricsto "" \new Lyrics
  {
    \override LyricText #'font-size = #0
    \override StanzaNumber #'font-size = #-1

    O me no wea -- ry yet, O me no wea -- ry yet
    \set stanza = "1."
    I have a wit -- ness in my heart,
    O me no wea -- ry yet. "(Brud" -- der To -- "ny¹)"
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
      tempoWholesPerMinute = #(ly:make-moment 82 4)
      }
    }


}
