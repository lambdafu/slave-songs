% 058.ly - Score sheet for "Early in the morning."
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
%  title = "Early In The Morning"
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
	\key f \major
	{
	    \repeat volta 2
	    {
		\partial 8 f'8 | f'8 f'16 f' f'8 a' |
		c''16 c'' c'' d'' c''8 f' |
		g'8 a' g' c'16 c' |
		d'16 d' e' d' d'8 c'16 r
	    }
	    \break
	    \partial 2 c''8. c''16 c'' f''8. |
	    c''8. << { \stemUp bes'16 \stemNeutral } << \\ a'16 >> >>
	    << { \stemUp bes'16 \stemNeutral } << \\ a'16 >> >> c'8. |
	    c''8. c''16 c'' f''8. |
	    c''8. << { \stemUp bes'16 \stemNeutral } << \\ a'16 >> >>
	    << { \stemUp bes'16 \stemNeutral } << \\ a'16 >> >> c'8. |
	    c''8. c''16 c'' f''8. | c''8. bes'16 bes'16 c'8. |
	    f'8 f' f'16 a'8. | a'16 f'8 f' c'8. \bar "||"
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	\set stanza = "1."
	I meet lit -- tle Ro -- sa ear -- ly in de morn -- in',
	O Je -- ru -- sa -- lem, ear -- ly in de morn -- in';

	Walk 'em eas -- y round de heab -- en,
	Walk 'em eas -- y round de heab -- en,
	Walk 'em eas -- y round de heab -- en,
	Till all liv -- ing may join dat band.¹
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	"An' I" ax her, "" how you do "" my "" dar -- ter?
	O Je -- ru -- sa -- lem, ear -- ly in de morn -- in'.
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
