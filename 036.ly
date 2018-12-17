% 036.ly - Score sheet for "Satan's Camp A-Fire."
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
%  title = "Satan's Camp A-Fire"
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
    \key a \major

    \tupletUp
    \tuplet 3/2 { cis''8 e'' cis'' } e''8 e'' | cis''16 a'8. r4 |
    d'16 d'8. fis'8. fis'16 | b'4 r |
    %% EDITED: Put the accent below so it doesn't conflict with the tuplet.
    \tuplet 3/2 { b'8 d''_> b' } d''8 b' | gis'16[ b'] e'8 r4 |
    d'8 d' e'8. e'16 | a'4 r4 \bar "||"
  }
  
  \new Lyrics
  \lyricsto "" {
    \override LyricText.font-size = #0
    \override StanzaNumber.font-size = #-1

    Fi -- er, my Sav -- iour, fi -- er,
    Sa -- tan's camp a -- fire;
    %% EDITED: Changed "be-lie-ver" to "be-liev-er".
    Fi -- er, be -- liev -- er, fi -- er,
    Sa -- tan's camp a -- fire.
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
