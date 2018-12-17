% 063.ly - Score sheet for "Fare Ye Well."
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
%  title = "Fare Ye Well."
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
	\key g \major

	\partial 4 d'4 | g'8. g'16 g'8 b'8 | d''16 b'8. r4 |
	g'8. a'16 g'8 fis'16 fis' | g'8 e' d' d' | e'4 e'8 fis' |
	g'4 r | b'4 b'8 a' | b'8 g' d'4 | a'4 b'8. a'16 | g'4 \bar "||"
	\break

	b'8 c'' | d''8. d''16 d'' d'' d''8 | e''16 d''8. b'8 g'16 b' |
	d''8. b'16 c''4 | a'4 r | d''8 d'' b' b'16 b' | a'8 a' g' d' |
	g'8 g' b' a' | g'4 \bar "||"
    }

    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	O fare you well, my brud -- der,
	fare you well by de grace of God,
	For I'se gwin -- en home;
	I'se gwin -- en home, my Lord,
	I'se gwin -- en home.

	Mas -- sa Je -- sus gib me a lit -- tle broom,
	For to sweep my heart clean;
	Sweep 'em clean by de grace of God,
	An' glo -- ry in my soul.
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
