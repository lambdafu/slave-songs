% 012.ly - Score sheet for "Hold your light."
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
%  title = "Hold your light."
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
    \key d \major
    
    {
      \partial 8 a'8 |
      d''4 d'' | cis''8 e''4 cis''8 | d''8 cis'' b'4 |
      a'4 cis''8 e'' | d''4 b'8 d'' | cis''4 a'8 cis'' |
      \override Stem.neutral-direction = #1
      b'4 << e'4 << \\ \set fontSize = #'-4 \stemUp e''4 >> >>  |
      << { \once \override Stem.transparent = ##t e'8
	   \set fontSize = #'-4 \stemDown a' a' a'
	   \set fontSize = #'0 \stemNeutral }
	 << \\ \set fontSize = #'0 \stemUp { e'4 r }
	    \\ \set fontSize = #'-4 d''4 >> >> 
      | \bar "||"
      \break
      a'4. b'8 |
      << { \once \override Stem.transparent = ##t a'8
	   \set fontSize = #'-4 \stemDown a'16 a' a'8 a'
	   \set fontSize = #'0 \stemNeutral }
	 << \\ \set fontSize = #'0 \stemUp { a'4 r } >> >>
      
      | a'4. fis'8 |
      << { \once \override Stem.transparent = ##t e'8
	   \set fontSize = #'-4 \stemDown a'16 a' a'8 a'
	   \set fontSize = #'0 }
	 << \\ \set fontSize = #'0 \stemUp { e'4 r } >> >> |
      a'4 d'' |
      %% FIXME: Overriding neutral-direction doesn't work here...
      \once \override Stem.direction = #1
      b'4
      << g'4 << \\ \set fontSize = #'-4 \stemDown g''4 >> >> |
      << fis'4 << \\ \set fontSize = #'-4 \stemDown fis''4 >> >>
      << \stemUp e'4 << \\ \set fontSize = #'-4 \stemUp e''4 >> >> |
      << \stemUp d'4 << \\ \set fontSize = #'-4 \stemUp d''4 >> >>
      r8 \bar "||"
    }
  }
  \new Lyrics
  \lyricsto "" {
    \override LyricText.font-size = #0
    \override StanzaNumber.font-size = #-1

    What make ole Sa -- tan da fol -- low me so?
    Sa -- tan hain't nottin' at all for to do wid¹ me.
    "(Run" see -- "ker.)"
    Hold your light, "(Sis" -- ter Ma -- "ry,²)"
    Hold your light, "(See" -- ker turn "back,)" 
    Hold your light on Ca -- naan shore.
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
