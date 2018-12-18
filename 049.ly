% 049.ly - Score sheet for "My army cross over."
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
%  title = "My Army Cross Over."
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
	\key g \major

	\partial 4 g'4 | b'4 d'' d'' b' | g'4 g'2 g'4 |
	g'4 g' b'2 | a'4 a'2 a'4 |
	c''4 e'' e'' c'' | a'4 a'2 fis'4 |
	fis'4 fis' d'2 | g'4 g'2 \bar "||"
    }

    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	\set stanza = "1."
	My brud -- der, tik keer Sa -- tan, My ar -- my cross o -- ber,
	My brud -- der, tik keer Sa -- tan, My ar -- my cross o -- ber.
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
