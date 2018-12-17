% 059.ly - Score sheet for "Hail, Mary."
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
%  title = "Hail, Mary"
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
	\key a \major
	{
	    \partial 4 e'4 | a'4 a' a' a' | a'4 a' a' r8 fis' |
	    fis'4 fis' fis' fis' | e'4 e' e' r8 e' | a'4 a' a' a' |
	    cis''4 e'' e'' r8 d'' | cis''4 cis'' b' b' | a'2 r4 \bar "||"
	    a'4 | cis''2 cis''4. cis''8 | cis''2. b'4 | a'2 a'4. fis'8 |
	    e'2 r4 e' | a'2 a'4. a'8 | cis''8( e''4.) r4 d'' |
	    cis''4 cis'' b' b' | a'2 r4 \bar "||"
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	I want some val -- iant sol -- dier here,
	I want some val -- iant sol -- dier here,
	I want some val -- iant sol -- dier here,
	To help me bear de cross.
	O hail, Ma -- ry, hail!
	O hail, Ma -- ry, hail!
	O hail, Ma -- ry, hail!
	To help me bear de cross.
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
    \tempo 4 = 120
    }


}
