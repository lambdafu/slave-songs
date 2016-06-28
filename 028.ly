% 028.ly - Score sheet for "Jine 'em."
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
%  title = "Jine 'em."
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
      \partial 8 d''8 | d''8 d'' b' a'16 a' | b'8 e'' d'' r |
      \override Stem #'neutral-direction = #1 
      b'8 b'4
      << { \stemUp b'8 \stemNeutral }
	 << \\ \set fontSize = #'-4 \stemDown g'8 >> >> |
      << { \stemUp c''8 \stemNeutral }
	 << \\ \set fontSize = #'-4 \autoBeamOff \stemDown a'8 >> >>
      << { \stemUp b'8 \stemNeutral }
	 << \\ \set fontSize = #'-4 \stemDown g'8 >> >>

      r b' | c''8 b'16 b' a'8 g' |
      fis'8 a' b' r | a'8 a'4 d'8 | e'8 d' r    
    }
  }
  \lyricsto "" \new Lyrics
    {
      \override LyricText #'font-size = #0
      \override StanzaNumber #'font-size = #-1

      On Sun -- day morn -- in' I seek my Lord;
      Jine 'em, jine 'em oh!
      Oh jine 'em, be -- lie -- ver, jine 'em so;
      Jine 'em, jine 'em oh!
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
