% 109.ly - Score sheet for "Charleston Gals"
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
%  title = "Charleston Gals"
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
	{
	    \partial 16 d'16 | d'8 g' g'8. a'16 | b'8 g' g' r16 g' |
	    a'8 g' a' g' | c''8 b' a' r16 d' | d'8. e'16 fis'8. g'16 |
	    a'16 a' a'8 a'16 r g' g' | fis'8 d' e'8. g'16 |
	    fis'8 e' d' r16 \bar "||" 
	    d'16 | d'8 d'16 e' fis'8 g' | a'8 fis' g' a' | b'8 g' b' g' |
	    b'8 g' c'' b' | a'4 r | d'8. e'16 fis'8. g'16 |
	    a'8 a' a' r16 g' | fis'8 d' e'8. g'16 | fis'16 fis'16 e'8 d' r
	    \bar "||"
	    d''4 d''8. c''16 | b'8 g' g'4 | fis'8 d' e' g'16 g' |
	    fis'8 e' d' r16 \bar "||"
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	\set stanza = "1."
	As I walked down the new -- cut road,
	I met the tap and then the toad;
	The toad com -- menced to whis -- tle and sing,
	And the pos -- sum cut the pige -- on -- wing.
	A -- long come an old man rid -- ing by:
	Old man, if you don't mind, your horse will die;
	If he dies I'll tan his skin,
	and if he lives I'll ride him a -- gin.
	Hi ho, for Charles -- ton gals!
	Charles -- ton gals are the gals for me.
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
