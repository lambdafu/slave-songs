% 130.ly - Score sheet for "Belle Layotte"
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
%  title = "Belle Layotte"
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
	    \repeat volta 2
	    {
		\tuplet 3/2 { f'8^\markup { CHORUS } f' a' } a' a' |
		g'8 f' g'4 |
		\tuplet 3/2 { f'8 a' g' } f'8 g' | f'8 f' f'4^\markup { FINE }
	    }
	    r4 \tuplet 3/2 { f'8^\markup { SOLO } a' c'' } | f''8 f'' f''4 |
	    \tuplet 3/2 { e''8 e'' e'' } d'' e'' | d''8 c'' c''4 |
	    r8 c''8 \tuplet 3/2 { d'' d'' d'' } | c''8 c'' f''4 |
	    \tuplet 3/2 { f'8 f' g' } e' f' | d'8 f' c'4^\markup { D. C. }
	    \bar "||"
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	Mo dé -- jà rou -- lé tout la côte
	Pan -- cor ouar par -- eil belle La -- yotte.
	%% FIXME: No (bis).

	\set stanza = "1."
	Mo rou -- lé tout la côte,
	Mo rou -- lé tout la col -- o -- nie;
	Mo pan -- cor ouar griff -- onne la
	Qua mo gout comme la belle La -- yotte.
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
