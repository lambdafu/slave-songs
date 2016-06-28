% 003.ly - Score sheet for "I hear from Heaven to-day."
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

\version "2.10.5"

%\header
%{
%  title = "I hear from Heaven to-day."
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
    \key f \major
	
    \repeat volta 2
    {
      \partial 4 a'8 c'' |
      d''4. 
      \stemUp <a' \tweak #'font-size #-4 c''>8 \stemNeutral
      d''8 c'' a' f'16 f' | g'16 g' f'8 g'16 a'8 g'16 |
      g'4 a'8 c'' |
      %% FIXME: It would be better to have the variation more to the right.
      %% EDITED: I added a stem to the d'', because this makes it clear
      %% there are two voices.
      \override Staff.NoteCollision #'merge-differently-dotted = ##t
      << { d''4. \stemDown c''8 \stemNeutral }
	 << \\ { \stemUp d''4 f''8[ d''] } >> >> |
      d''8 c'' a' f'16 f' | f'16 f' c'8 d'16 f'8 f'16 |
      f'4
    }
    \break
    {
      \partial 8 f'16[ g'] |
      a'8 a'16 a' a' a' f' f' |
      << a'8 << \\ { s32 \set fontSize = #'-4 g'8*3/4 } >> >> f'8 d' f'16 f' |
      g'16 g' f'8 g'16 a'8 g'16 g'4 r8 g'8 |
      g'8 g'16 g' g' g' f' g' | a'8 f' d' f'16 f' |
      f'16 f' c'8 d'16 f'8 f'16 | f'4 r8 \bar "||"
    }
  }
  
  \lyricsto "" \new Lyrics
  {
    \override LyricText #'font-size = #0
    \override StanzaNumber #'font-size = #-1

    Hur -- ry¹ on, my wea -- ry soul,
    And I year -- de from heav -- en to -- day,
    Hur -- ry on, my wea -- ry² soul,
    And I year -- de from heav -- en to -- day,

    \set stanza = "1."
    My sin is for -- giv -- en and my soul set free,
    And I year -- de from heav -- en to -- day,
    My sin is for -- giv -- en and my soul set free,
    And I year -- de from heav -- en to -- day,
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
