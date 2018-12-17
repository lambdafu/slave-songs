% 112.ly - Score sheet for "My Father, How Long!"
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
%  title = "My Father, How Long!"
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
	\key f \major
	{
	    \repeat volta 2
	    {
		\partial 4 f'4 | a'4 f' a'( c'') | bes'2 r4 bes' |
		a'4 f' a'2 | g'2 r4 f' | a'4 c'' d''2 | c''2 r4 a' |
		f'8 a'4. a' g'8 | f'2 r4
	    }
	    \repeat volta 2
	    {
		f'8 g' | a'2 a' | bes'2 r4 bes'8 bes' |
		a'8( f'4.) f'8( a'4.) | g'2 r4 f'8 f' | a'8( c''4.) d''2 |
		c''2 r4 a' | f'8 a'4. a' g'8 | f'2 r4
	    }
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	My fath -- er,¹ how long,
	My fath -- er, how long,
	My fath -- er, how long,
	Poor sin -- ner suf -- fer here?

	\set stanza = "1."
	And it won't be long,
	And it won't be long,
	And it won't be long,
	Poor sin -- ner suf -- fer here.
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
    \tempo 4 = 140
    }


}
