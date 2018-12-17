% 121.ly - Score sheet for "Away Down In Sunbury"
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
%  title = "Away Down In Sunbury"
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
	\key e \major
	{
	    \repeat volta 2
	    {
		\partial 8 b'8 | b'8 gis' gis' e'' | e''8 cis'' a' a' |
		gis'8. gis'16 fis'8. fis'16 | e'4 r8
	    }
	    \break
	    a'8 | a'8. a'16 a'8 a' | gis'8 gis' gis' gis' |
	    fis'8. fis'16 fis'8 fis' | gis'4 r8 gis' | gis'8[ e'] e' a' |
	    a'8. a'16 a'8 a' | gis'8. gis'16 fis'8 fis' | e'4 r8 \bar "||"
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	O mas -- sa take dat new brean coat
	And hang it on de wall,
	O don't you hear my true lub sing?
	O don't you hear 'em sigh?
	A -- way down in Sun -- bu -- ry
	I'm bound to live and die.
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	Dat dar -- kee take dat same ole coat
	And wear 'em to de ball.
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
    \tempo 4 = 100
    }


}
