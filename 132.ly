% 132.ly - Score sheet for "Aurore Bradaire"
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
%  title = "Aurore Bradaire"
%  composer = "trad."
%}

melody =
<<
     \context Voice
    {
	\set Staff.midiInstrument = "acoustic grand"
	\override Staff.VerticalAxisGroup.minimum-Y-extent = #'(0 . 0)
	
	\autoBeamOff
	\tupletDown

	\time 2/4
	\clef violin
	\key f \major
	{
	    %% The original score does have the repeat sign at the end.
	    \repeat volta 2
	    {
		\partial 8 c'8^\markup { CHORUS } | f'8 a' c'4 |
		f'16 a' c''4 a'8 | bes'8 g' c'4 |
		e'16 g' bes'4 bes'8 | a'8 f' c'4 | f'16 a' c''4 a'8 |
		bes'8 g'16 e' c'8 bes'8 | a'16 g' f'8 r8^\markup { FINE }
		\bar "||"
		c''8^\markup { SOLO } | c''8 c'' c'' a' |
		bes'16 c'' d''4 bes'8 | bes'8 bes' bes' g' |
		a'16 bes' c''4 f''8 | f''8 f'' f'' e'' |
		g''16 e'' c''4 a'8 | bes'8 g'16 e'16 c'8 bes' |
		a'16 g' f'4^\markup { D. C. }
	    }
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	Au -- rore Brad -- aire, belle ti fille,
	Au -- rore Brad -- aire, belle ti fille,
	Au -- rore Brad -- aire, belle ti fille,
	C'est li mo ou -- lé, c'est li ma pren.

	Li pas man -- dé robe mous -- se -- line,
	Li pas man -- dé dé -- ba bro -- dé,
	Li pas man -- dé sou -- lier pri -- nelle,
	C'est li mo ou -- lé, c'est li ma pren.
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
