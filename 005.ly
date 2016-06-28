% 005.ly - Score sheet for "Praise, member."
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
%  title = "Praise, member."
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
    \key g \major
    
    \repeat volta 2
    {
      d''4 b'8 d'' | e''8[ d''] d''8. b'16 | g'8 g' g' a' |
      \override Stem #'neutral-direction = #1
      b'16 d'8. d'8 r |
      \override Stem #'neutral-direction = #-1
      d''4 b'8 d'' | e''8[ d''] d''8. c''16 | b'8
      << { \stemUp b'8 \stemNeutral }
	 << \\ \set fontSize = #'-4 \stemDown g'8 >> >>
      << { \stemUp a'8. \stemNeutral }
	 << \\ \autoBeamOff \stemDown a'8. >> >>
      << { \stemUp a'16 \stemNeutral }
	 << \\ { s64 \set fontSize = #'-4 \stemDown g'16*3/4 } >> >> |
      \partial 4 g'4
    }
    \break
    \repeat volta 2
    {
      %% EDITED: Added a semi-quarter rest to expand the voice to
      %% measure length.
      \partial 4 << { \stemDown r8 g'8 \stemNeutral }
		    << \\ { \stemUp d''8.[ c''16] } >> >> |
      \override Stem #'neutral-direction = #1
      b'8 g' g' g'16 a' | b'16 g'8. g'8 g'16 g' | fis'8 d' d' g' |
      fis'16 fis' a'8 a'8. a'16 | fis'8 d' fis' a' | d''4 d''8. c''16 |
      %% EDITED: Removed the trailing quarter rest.
      b'8 b' a'8. g'16 | g'4
    }
  }
  \lyricsto "" \new Lyrics
  {
    \override LyricText #'font-size = #0
    \override StanzaNumber #'font-size = #-1

    Praise, mem -- ber,¹ praise God,
    I praise my Lord un -- til I die;
    Praise, mem -- ber, praise God,²
    And reach de heaven -- ly home.³
    O Jor -- dan's bank⁴ is a good old bank,
    And I hain't but one more riv -- er to cross;
    I want some val -- iant sol -- dier
    To help me bear the cross.
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
