% 101.ly - Score sheet for "The Winter"
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
%  title = "The Winter"
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
	\key as \major
	{
	    %% CHANGED: < changed to >.  Mmmh.
	    \partial 8 es'16 c' | es'8^! es'8^> r8 es'16 c'16 |
	    es'8^! es'8^> r8 es'16 c'16 | es'8 c'' c'' c'' |
	    c'' bes' as' g'16 c' | f'8^! f'8^> r8 f'16 c'16 |
	    f'8^! f'8^> r8 f'16 c'16 | f'8 bes' bes' bes' |
	    bes'8 as' g' f'16 es' | as'8^! as'8^> r8 as'16 es'16 |
	    as'8^! as'8^> r8 as'16 es'16 | as'8 c'' c'' c'' |
	    c''8 bes' as' g' | < es' g' bes' >8 c''16[ bes']
%% FIXME: FINE is too large.
	    < c' as' >8.^\fermata \mark \markup { FINE }
	    \repeat volta 2
	    {
		es'16 | es'8. es'16 es'8. as'16 |
		as'8. f'16 es'8 es'16. as'32 |
		g'8 g' g' g'16 bes' |
	    }
	    \alternative
	    {
		{ bes'16 as' \appoggiatura bes' as' g' as'8. }
		{ bes'16 as' \appoggiatura bes' as' g' as'8^\markup { D. C. } }
	    }
	    \bar "||"
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	O de vin -- ter, O de vin -- ter,
	O de vin -- ter'll soon be o -- ber,¹ chil -- en,
	De vin -- ter, O de vin -- ter,
	O de vin -- ter'll soon be o -- ber, chil -- en,
	De vin -- ter, O de vin -- ter,
	O de vin -- ter'll soon be o -- ber, chil -- en,
	Yes, my Lord!

	\set stanza = "1."
	'Tis Paul and Si -- las bound in chains, chains,
	And one did weep,² and de o -- der one did pray,
	o -- der one did pray!
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
