% 074.ly - Score sheet for "Nobody Knows The Troube I've Had"
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
%  title = "Nobody Knows The Troube I've Had"
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
	\key bes \major
	{
	    \repeat volta 2
	    {
		%% FIXME: This is pretty borked.
		<< { \stemUp f'8 \stemNeutral }
		   << \\ { \stemDown f'4 } >> >>
		<< { \stemUp bes'4 \stemNeutral }
		   << \\ { \stemDown bes'8 } >> >>
		\partial 8*5
		bes'8 bes'4. c''8 | d''8 d'' d''4 d'' r |
		<< { \stemUp f'8 \stemNeutral }
		   << \\ { \stemDown f'4 } >> >>
		<< { \stemUp bes'4 \stemNeutral }
		   << \\ { \stemDown bes'8 } >> >>
		\partial 8*5
		bes'8 bes'4 c'' | g'4 f' r2 |
		<< { \stemUp f'8 \stemNeutral }
		   << \\ { \stemDown f'4 } >> >>
		<< { \stemUp bes'4 \stemNeutral }
		   << \\ { \stemDown bes'8 } >> >>
		\partial 8*5
		bes'8 bes'4. c''8 | d''8 d'' d''4 d''

		<<	
		    { \stemUp \tweak font-size #-4 d''4 \stemNeutral } << \\ { r4 } >> >> |
		f''4. d''8 c''4 c'' | bes'2 r4
	    }

	    \break
	    \repeat volta 2
	    {
		d''4 | f''4 f'' f'' d''8 d'' | f''4 f'' bes' r |
		d''2 c'' bes'2 r4
		d''4 | f''4 f'' f'' d''8 d'' | f''4 f'' bes' r |
		d''2 c'' bes'2 r4
	    }
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	No -- bod -- y knows de troub -- le I've had,¹
	No -- bod -- y knows but Je -- sus,
	No -- bod -- y knows de troub -- le I've had,
	"(Sing)" Glo -- ry hal -- le -- lu!

	\set stanza = "1."
	One morn -- ing I was a -- walk -- ing down,
	O yes, Lord!
	I saw some ber -- ries a -- hang -- ing down,
	O yes, Lord!
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
    \tempo 4 = 60
    }


}
