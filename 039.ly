% 039.ly - Score sheet for "I wish I been dere."
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
%  title = "I Wish I Been Dere"
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

	\repeat volta 2
	{
	    \partial 8 d'8 | g'16 g'8 d'16 g'8 a' | b'8 b' r d' |
	    fis'16 fis'8 d'16 fis'8 g'8 | a'8 a' r d' |
	    g'16 g'8 d'16 g'8 a' | b'8 b' r d' |
	    g'8 g' fis' fis' | g'4 r8 \break
	}
	\repeat volta 2
	{
	    d'8 | g'8 g'4
	    \stemUp << b'8 << \\ \set fontSize = #'-4
			      \stemDown a'8 >>
		   >> \stemNeutral |
	    \stemDown << g'4 << \\ \set fontSize = #'-4
				{ \autoBeamOff \stemUp b'8 g' } >>
		     >> \stemNeutral
	    r8 d'' | g''8 b'4 d''8 | c''16[ b'] a'8 r a' |
	    <fis' a'>8 a'4
	    <fis' \tweak font-size #-4 a'>8 |
	    \stemDown << d'4
			 << \\ \set fontSize = #'-4
			    { \autoBeamOff \stemUp fis'8 d' } >>
		     >> \stemNeutral
	    r8 fis'8 | g'8. <g' b'>16  a'8. g'16 | g'4 r8
	}
    }

    \new Lyrics
    \lyricsto "" {
      \override LyricText.font-size = #0
      \override StanzaNumber.font-size = #-1

	My mud -- der, you fol -- low Je -- sus,
	My sis -- ter, you fol -- low Je -- sus,
	My brud -- der, you fol -- low Je -- sus,
	To fight un -- til I die.

	I wish I been dere,
	To climb Ja -- cob's lad -- der,
	I wish I been dere,
	To wear de star -- ry crown.
    }
    \new Lyrics
    \lyricsto "" {
      \override LyricText.font-size = #0
      \override StanzaNumber.font-size = #-1

	"" "" "" "" "" "" "" ""
	"" "" "" "" "" "" "" ""
	"" "" "" "" "" "" "" ""
	"" "" "" "" "" ""

	%% FIXME: yonder is not below the notes it belongs to.
	"" "" "" "" yonder,
	"" "" "" "" "" ""
	"" "" "" "" yonder,
	"" "" "" "" "" ""
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
