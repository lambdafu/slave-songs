% 075.ly - Score sheet for "Who Is On The Lord's Side."
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
%  title = "Who Is On The Lord's Side."
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

	g'4 g' g'8 g' d' d' | g'8 g' b' b' d''[ b'] r4 |
	g'4 g' g' b' | d''2 b'4( g') | b'8 b' g'4 g' g' |
	b'8 b' g'4 g' r | d'4 d' g' d' | g'2 g' \bar "||" \break

	d''2 d''4 b' | d''2 g'' | g'4 g' g' b' | d''2 b'4( g') |
	b'2 b'4 g' | b'2 d' | d'4 d' g'4. d'8 | g'2 g' \bar "||"
    }

    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	Let me tell you what is nat' -- ral -- ly de fac'
	Who is on de Lord's side,
	None o' God's chil -- 'n neb -- ber look back,
	Who is on de Lord's side.
	\set stanza = "1."
	Way in de wal -- ley,
	Who is on de Lord's side,
	Way in de wal -- ley,
	Who is on de Lord's side.
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
