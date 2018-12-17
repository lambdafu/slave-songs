% 095.ly - Score sheet for "We will march thro' the valley"
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
%  title = "We will march thro' the valley"
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
	    \partial 4 f'8 a' |
	    bes'4 bes'8. c''16 bes'[ g' f'8] a' bes' |
	    c''4.( d''8 c''4) bes'8 c'' | 
	    \break
	    d''4 d''8. es''16 d''[ c'' bes'8] bes' d'' |
	    c''4.( d''8 c''4) bes'8[ c''] | 
	    \break
	    d''4 d''8. es''16 d''[ c'' bes'8] bes' d'' |
	    c''4.( d''8) c''[ f'] a'8 bes'8 |
	    \break
	    c''4 d''8. c''16 bes'8[ f'] a' c'' | bes'2 r4
	    \bar "||"
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	\set stanza = "1."
	We will march thro' the val -- ley in peace,
	We will march thro' the val -- ley in peace;
	If Je -- sus him -- self be our lead -- er,
	We will march thro' the val -- ley in peace.
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
