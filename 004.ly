% 004.ly - Score sheet for "Blow your trumpet, Gabriel."
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
%  title = "Blow Your Trumpet, Gabriel"
%  composer = "trad."
%}

melody =
<<
  \context Voice = "melody"
  {
    \set Staff.midiInstrument = "acoustic grand"
    \override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
	
    \autoBeamOff
    
    \time 2/4
    \clef violin
    \key g \major
    
    \override Stem #'neutral-direction = #1

    \repeat volta 2
    {
      \partial 8 g'8 |
      b'8 b' a' a' | b'8 b' a'8. a'16 | b'8 b' a' g' |
      fis'8 g' a' g'16 a' | b'8 b' a' a' | g'8. e'16 d'8 fis'16 fis' |
      g'8. b'16 a'8. g'16 | g'4 r8
    }
    \break
    \repeat volta 2
    {
      \override Stem #'neutral-direction = #-1
      \partial 2 b'8. b'16 b'8
      <b' \tweak #'font-size #-4 d''>8
      c''8 d'' r4 | e''4
      <e'' \tweak #'font-size #-4 c''>8
      e''8 |
      f''16[ e''] d''4 c''16 c'' |
      \override Stem #'neutral-direction = #1
      b'8 b' a' a' | g'8. e'16 d'8 fis'16 fis' | g'8. b'16 a'8. g'16 |
      g'4 r4
    }
  }
  
  \lyricsto "melody" \new Lyrics
  {
    \override LyricText #'font-size = #0
    \override StanzaNumber #'font-size = #-1

    De tall -- es' tree in Pa -- ra -- dise,
    De Chris -- tian call de tree of life;
    And I hope dat trump might blow me home
    To de new Je -- ru -- sa -- lem.

    Blow your trum -- pet, Gab -- riel,
    Blow loud -- er, loud -- er; And I
    hope dat trump might blow me home
    To de new Je -- ru -- sa -- lem.
  }
>>


  \score
  {
    <<
      \new Staff \with
      {
	fontSize = #-4
	\override StaffSymbol #'staff-space = #(magstep -4)
      }
      {
	\context Voice
	{
	  \set Staff.midiInstrument = "acoustic grand"
	  \override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
	  
	  \autoBeamOff
		
	  \time 2/4
	  \clef violin
	  \key g \major
	  
	  {
	    \partial 8 g'8^\markup { \italic { "2d time." } } |
	    b'8 d'' b' g' | b'8 d'' a'8. a'16
	  }
	}
      }
      
      \new Staff { \melody }
    >>
    \layout { indent = 0.0 }
  }
  
  \score
  {
    \new Staff { \unfoldRepeats \melody }
    
    
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 96 4)
      }
    }


  }
