% 115.ly - Score sheet for "O Brothers, Don't Get Weary"
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
%  title = "O Brothers, Don't Get Weary"
%  composer = "trad."
%}

melody =
<<
     \context Voice
    {
	\set Staff.midiInstrument = "acoustic grand"
	\override Staff.VerticalAxisGroup.minimum-Y-extent = #'(0 . 0)
	
	\autoBeamOff

	\time 4/4
	\clef violin
	\key d \major
	{
	    \partial 4 d'4 | d'4 d' fis' a' | d''2 e''4 d'' |
	    cis''4 cis'' d'' b' |
	    a'2 fis'4 d' | d'4 d' fis' a' | d''2 e''4 d'' |
	    cis''4 a' d'' b' | a'2. a'4 | a'4 a' d'' b'  a'2. fis'4 |
	    fis'4 fis' a' fis' | e'2 e'4 e' | d'4 d' d'' b' | a'2. fis'4 |
	    fis'4. fis'8 e'4 e' | d'2. \bar "||"
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	O broth -- ers, don't get wea --ry,
	O broth -- ers, don't get wea --ry,
	O broth -- ers, don't get wea --ry,
	We're wait -- ing for the Lord.
	We'll land on Can -- aan's shore,
	We'll land on Can -- aan's shore,
	When we land on Can -- aan's shore,
	We'll meet for -- ev -- er more.
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
