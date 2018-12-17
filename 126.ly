% 126.ly - Score sheet for "Come Along, Moses"
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
%  title = "Come Along, Moses"
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
	\key es \major
	{
	    \repeat volta 2
	    {
		es'16 es' g'8 g' bes' | es'8 g' g'4 |
		f'8 f' f'[ bes'] | bes'8 bes' bes'4\fermata |
		es'16 es' g'8 g' bes' | es'8 g' g'8. f'16 |
		f'8. f'16 as'16 as' f'8 | es'4 r4 |
	    }
	    \break
	    \repeat volta 2
	    {
		\partial 8 bes'8 | bes'16 bes' es''8 g'8. g'16 |
		g'16 g' bes'8 bes'8. f'16 |
		\break
		f'16 f' f'8 f'8. f'16 | g'16 g' bes'8 bes'8. bes'16 |
		\break
		bes'16 bes'16 es''8 g'8. g'16 | g'16 g' bes'8 bes'8. bes'16 |
		\break
		f'8. f'16 as'16 as' f'8 | es'4 r8
	    }
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	Come a -- long, Mo -- ses,¹
	don't get lost, don't get lost, don't get lost,
	Come a -- long Mo -- ses, don't get lost,
	We are the peo -- ple² of God.

	\set stanza = "1."
	We have a just God to plead -- a our cause,
	to plead -- a our cause, to plead -- a our cause,
	We have a just God to plead -- a our cause,
	We are the peo -- ple of God.
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
