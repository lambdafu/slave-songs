% 043.ly - Score sheet for "Travel on."
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
%  title = "Travel On"
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
	\key g \minor

	\partial 4 g'8 g' |
	bes'16 bes' g'8 f' g' | d'4 bes' | c''4 d''8.[ c''16] |
	c''8 g' g' a' |
	\break
	bes'8 g'4 f'8 | d'4 d''8[ c''] | bes'4 a' |
	g'8 r bes' c'' |
	\break
	c''4 bes'8 g' | g'4 r8 <d' d''>8 |
	<f' f''>4 <g' g''>4 | <d' d''>8[ <c' c''>8] <bes bes'>4 |
	\break
	r4 c''8 d'' | d''4 bes'8 g' | g'4 r8 bes' |
	c''16 c'' c'' c'' bes'8 bes' | g'4 \bar "||"
     }

    \lyricsto "" \new Lyrics
    {
        \override LyricText #'font-size = #0
        \override StanzaNumber #'font-size = #-1

	Sis -- ter Ro -- sy, you get to heaven be -- fore I go,
	Sis -- ter, you look out for me, I'm on de way.
	Tra -- bel on, tra -- bel on, you heaven -- born¹
	sol -- dier,
	Tra -- bel on, tra -- bel on,
	Go hear -- de what my Je -- sus say.
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
      tempoWholesPerMinute = #(ly:make-moment 80 4)
      }
    }


}
