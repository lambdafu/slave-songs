% 056.ly - Score sheet for "Meet, o lord!"
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

\version "2.10.0"

%\header
%{
%  title = "Meet, o lord!"
%  composer = "trad."
%}

melody =
<<
     \context Voice
    {
	\set Staff.midiInstrument = "acoustic grand"
	\override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
	
	\autoBeamOff

	\time 2/4
	\clef violin
	\key bes \major
	
	{
	    d''8\fermata c'' bes' g'16 a' | bes'8 c'' bes' g'16 a' |
	    bes'8 c'' bes' g'16 a' | bes'4 r4 | \break
	    f'8\fermata g' bes' c''16 c'' | d''8 d''16 d'' d''8 bes' |
	    c''16 c'' d'' c'' bes'8 g' | bes'4 r \bar "||" \break
	    f'8\fermata g' bes'16 bes' c''8 | d''4 r |
	    c''8\fermata d'' c''16 c'' g'8 | c''4 r |
	    f'8\fermata g' bes'16 bes' c''8 | d''4 r8 bes' |
	    c''8 d''16 c'' bes'8 g' | bes'4 r \bar "||"
	}
    }
    \lyricsto "" \new Lyrics
    {
        \override LyricText #'font-size = #0
        \override StanzaNumber #'font-size = #-1

	\set stanza = "1."
	Meet, O Lord, on de milk -- white horse,
	An' de nine -- teen wile¹ in his han';
	Drop on, drop on de crown on my head,
	An' roll -- y in my Je -- sus' arm.
	In dat mor -- nin' all day,
	In dat mor -- nin' all day,
	In dat mor -- nin' all day,
	When Je -- sus de Chris' been born.
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
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 82 4)
      }
    }


}
