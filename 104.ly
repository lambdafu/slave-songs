% 104.ly - Score sheet for "The Good Old Way"
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
%  title = "The Good Old Way"
%  composer = "trad."
%}

melody =
<<
     \context Voice
    {
	\set Staff.midiInstrument = "acoustic grand"
	\override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(0 . 0)
	
	\autoBeamOff

	\time 4/4
	\clef violin
	\key bes \major
	{
	    \partial 8 f'8 | f'4 f' bes' bes'8 bes' |
	    c''8 c'' d''4 c''8([ bes'] g'4) |
	    \break
	    c''4 c''8 c'' c''4 bes' | d''4 c'' bes' r8 f' |
	    \break
	    f'4 f' bes' bes' | c''4 d'' c''8([ bes'] g'4) |
	    \break
	    c''2 c'' | bes'4 g'8 g' f'4 r
	    \bar "||"

	    \break
	    c''2 d''4 c'' | d''4 f'' c''2 | bes'4 d'' bes'2 | bes'4 g' f'2 |
	    c''2 d''4 c'' | d''4 f'' c''2 | bes'4 d''8 d'' bes' bes' g'4 |
	    f'2 r4 \bar "||"
	}
    }
    \lyricsto "" \new Lyrics
    {
        \override LyricText #'font-size = #0
        \override StanzaNumber #'font-size = #-1

	As I went down in de val -- ley to pray,
	Study -- ing a -- bout dat good old way,
	When you shall wear de star -- ry crown,
	Good Lord, show me de way.
	O mour -- ner,¹ let's go down,
	let's go down, let's go down,
	O mour -- ner, let's go down,
	Down in de val -- ley to pray.
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
      tempoWholesPerMinute = #(ly:make-moment 100 4)
      }
    }


}
