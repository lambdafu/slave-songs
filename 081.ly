% 081.ly - Score sheet for "Jesus, Won't You Come By-And-Bye?"
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
%  title = "Jesus, Won't You Come By-And-Bye?"
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
	\key d \minor
	{
	    \repeat volta 2
	    {
		\partial 8 a'8 | a'8 c'' a'8. a'16 | a'16 a' a' a' f'8 d' |
		d'16 e' f' g' a'8 a' | a'4 r8 a' | a'16 a' a' a' a' a' a' a' |
		a'16 bes' a' g' f'8 d' | d'16 e' f' g' a'8 a' | d'4 r8
	    }
	    \repeat volta 2
	    {
		d''8 d''4 d''8. d''16 | a'8 a'16 g' f'8 d' |
		d'16 e' f' g' a'8 a' |
	    }
	    \alternative
	    {
		{ a'4 r8 }
		{ d'4 r8 }
	    }
	    \bar "||"
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	You ride dat horse, you call him Mac -- a -- do -- ni,
	Je -- sus, won't you come bum -- by?
	You ride him in de morn -- in' and you ride him in de eve -- nin',
	Je -- sus, won't you come bum -- by?
	De Lord knows de world's gwine to end up,
	Je -- sus, won't you come bum -- by? by?
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
    \tempo 4 = 60
    }


}
