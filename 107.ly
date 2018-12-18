% 107.ly - Score sheet for "Brother, Guide Me Home"
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
%  title = "Brother, Guide Me Home"
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
	    \repeat volta 2
	    {
		\partial 4 a'8 a' | a'4 a' cis'' e'' | d''4 d'' cis'' r8 a' |
		a'4 a' a'8 cis''8 e'' cis'' | d''2 r4 cis''8 cis'' |
		d''4 d'' cis'' e'' | d''4 d'' b' r8 a'16[ cis''] |
		e''4 e'' e''8 d'' b' gis' | a'2 r4
	    }
	    \repeat volta 2
	    {
		a'8 a' | a'4. a'8 gis'2 | a'4 b' r cis''8 cis'' |
		d''4. d''8 cis''2 | b'4 a' r a'8 a' |
		a'4. a'8 gis'2 | a'4 b' r cis'' | e''4 e'' e''8 d'' b' gis' |
		a'2 r4
	    }
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	Brud -- der, guide me home an' I am glad,
	Bright an -- gels bid -- dy me to come;
	Brud -- der, guide me home an' I am glad,
	Bright an -- gels bid -- dy me to come.

	\set stanza = "1."
	What a hap -- py time, chil -- 'n,
	What a hap -- py time, chil -- 'n,
	What a hap -- py time, chil -- 'n,
	Bright an -- gels bid -- dy me to come.
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
