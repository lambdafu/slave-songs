% 078.ly - Score sheet for "Every Hour In The Day"
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
%  title = "Every Hour In The Day"
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
	\key e \minor
	{
	    %% CHANGED: Removed the slur.
	    \partial 8 e''8 | e''4 e''8 g'' | e''8.[ b'16] g'8 g' |
	    b'8 g'16[ a'] b'8 g' | b'4

%% CHANGED: The original has "r8 b'8 b'8" which is too long and
%% doesn't have the correct offbeat.
	    r8 b'16 b'16 | e''8 e''16 d''16 c''8 b'16[ a'] |
	    b'16 b' g'8 e' g' | a'8 g' e' dis' | e'4 r8 \bar "||"
	    g'16 g' | g'8 g'16 fis' e'8 g' |
	    b'4 b'8. g'16 | a'16 g'8 g'16 e'8 g'16 g' |
	    g'8 g'16 fis' e'8 g' | b'4 b'8. g'16 |
	    a'16 a'16 g'8 e' dis' | e'4 r8 \bar "||"
	}
    }
    \lyricsto "" \new Lyrics
    {
        \override LyricText #'font-size = #0
        \override StanzaNumber #'font-size = #-1

	One cold free -- zing morn -- ing
	I lay dis bod -- y down;
	I will pick up my cross an' fol -- low my Lord
	All roun' my Fa -- der's throne.

	\set stanza = "1."
	Ev -- ery hour in de day cry ho -- ly,
	Cry ho -- ly, my Lord!
	Ev -- ery hour in de day cry ho -- ly,
	Oh show me de crime I've done.
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
      tempoWholesPerMinute = #(ly:make-moment 60 4)
      }
    }


}
