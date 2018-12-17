% 108.ly - Score sheet for "Little Children, Then Won't You Be Glad?"
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
%  title = "Little Children, Then Won't You Be Glad?"
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
	    \partial 4 a'8 a' | a'4 a'8. a'16 a'4 b'8. g'16 | a'2 r4 d''8 d'' |
	    \break
	    fis''4 fis''8. fis''16 d''4 d''8. b'16 | a'2 r4 d''8 d'' |
	    \break
	    fis''4 fis''8. d''16 d''4 a'8. a'16 | d''8 d'' d'' b' a'4 a'8 a' |
	    \break
	    a'8[ b'] fis'8 e' d'4 d' | fis'8[ a'] r4 a'8 a' a' a' |
	    \break
	    a'8[ b'] fis'8 e' d'4 e' | d'2 r4 \bar "||"
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	\set stanza = "1."
	Lit -- tle chil -- dren, then won't you be glad,
	Lit -- tle chil -- dren, then won't you be glad,
	That you have been to heav'n,
	an' you're gwine to go a -- gain,
	For to try on the long white robe, chil -- dren,
	For to try on the long white robe.
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
