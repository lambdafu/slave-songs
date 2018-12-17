% 106.ly - Score sheet for "Sinner Won't Die No More"
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
%  title = "Sinner Won't Die No More"
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
	    \partial 4 e''8. d''16 | cis''4 cis'' cis'' cis'' |
	    d''4 cis'' b' r8 a'8 |
	    \break
	    gis'4 b' b' b' | cis''4 b' a' e''8. d''16 |
	    \break
	    cis''4 cis'' cis'' cis'' | d''4 cis'' b' r |
	    \break
	    gis'8 a' b'8.[ cis''16] d''4 gis' |
	    a'2 r4 \bar "||"
	    \break
	    e'4 | a'4 a' cis'' d'' | e''2 e'' | a'2 a' | fis'4.( e'8) e'4 e' |
	    \break
	    a'4 a' cis'' d'' | e''2 e''4. a'8 | a'4 cis'' d''8 b'4. |
	    a'2 r4 \bar "||"
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	O de Lamb done been down here an' died,
	De Lamb done been down here an' died,
	O de Lamb done been down here an' died,
	Sin -- ner won't die no mo'.

	\set stanza = "1."
	I won -- der what bright an -- gels,
	an -- gels, an -- gels,
	I won -- der what bright an -- gels,
	De robes all read -- y now.
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
