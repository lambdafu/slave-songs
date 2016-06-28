% 023.ly - Score sheet for "I saw the beam in my sister's eye."
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
%  title = "I saw the beam in my sister's eye,"
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

    {
      b'8 b'16 b' b' b' b'8 | c''8 c'' c''4 |
      b'8 b'16 b' g'8 g' | d'4 r8 b' |
      b'16 d''8. d''8 b' | c''16 e''8. e''8 a' |
      b'16 d''8. d''8 a' | g'4 r4 \bar "||"
    }
  }
  \lyricsto "" \new Lyrics
  {
    \override LyricText #'font-size = #0
    \override StanzaNumber #'font-size = #-1

%% EDITED: I like it better with stem down.
%% \override Stem #'neutral-direction = #1 
    \set stanza = "1."
    I saw de beam in my sis -- ter's¹ eye,
    Can't saw de beam in mine;
    You'd bet -- ter lef' your sis -- ter door,
    Go keep your own door clean.
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

% Tempo is about 4=100 to 4=120.
  
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 90 4)
      }
    }


}
