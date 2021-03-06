% 057.ly - Score sheet for "Wait, Mr. Mackright"
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
%  title = "Wait, Mr. Mackright"
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
	\key a \major

	{
	    e''4. cis''16 e'' | a'8 a' r cis''16 cis'' |
	    d''16 d'' e''8 fis'' e'' | cis''4 a'8 cis'' |
	    e''8 e'' cis''8. b'16 | a'8 cis''4 a'8 |
	    b'8 b' cis''8. b'16 | a'4 r8 \break
	    \repeat volta 2
	    {
		cis''16 cis'' | d''8 d''4 a''8 | a''8 a'' r4 |
		cis''8 e'4 gis'8 | a'8 a'4
	    }
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	Wai', Mis -- ter Mack -- right, an' 'e yed -- de what Sa -- tan say:
	Sa -- tan full me full of mu -- sic, an' tell me not to pray.
	Mis -- ter Mack -- right cry ho -- ly; O Lord, cry ho -- ly.
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
    \tempo 4 = 82
    }


}
