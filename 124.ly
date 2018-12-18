% 124.ly - Score sheet for "These Are All My Father's Children"
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
%  title = "These Are All My Father's Children"
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
	\key bes \major
	{
	    \repeat volta 2
	    {
		\partial 2 d''8 bes'4 bes'8 | bes'8 bes' f' f' |
		as'8 as'4 as'8 | as'8 as' f' f' |
		d''8 bes'4 bes'8 | bes'8 bes' c'' c'' |
		d''8 c''4 c''8 | bes'4
	    }
	    \repeat volta 2
	    {
		r8 bes8 | d'16 f'8. a'8 a'16 a' |
		bes'16 bes' bes' bes' f'8 f'16 f' |
		\break
		g'16 g' g' g' es'8 es'16 es' | f'16 f' f' d' bes8 bes |
		\break
		d'16 f'8. a'8 a'16 a' | bes'16 bes' bes' bes' c''4 |
		d''8 c''4 d''8 | bes'4
	    }
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	Dese all my fa -- der's chil -- dren,
	Dese all my fa -- der's chil -- dren,
	Dese all my fa -- der's chil -- dren,
	Out -- shine de sun.
	My fa -- der's done wid de troub -- le o' de world,
	wid de troub -- le o' de world, wid de troub -- le o' de world,
	My fa -- der's done wid de troub -- le o' de world,
	Out -- sine de sun.
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
