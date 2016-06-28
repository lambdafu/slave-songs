% 118.ly - Score sheet for "Jacob's Ladder"
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
%  title = "Jacob's Ladder"
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
	\key e \minor
	{
	    \repeat volta 2
	    {
		\partial 4 g'4 | e'8 r d''4 | b'4 r8 d'' | e'' d'' b' g' |
		a'8 b' g'4 | e'8 r d''4 | b'4 r8 g' | a'8 g' e' d' | e'4 
	    }
	    \break
	    \repeat volta 2
	    {
		e'8[ fis'] | g'16 g'8 d'16 g'8. a'16 | b'8 b' b' g'16 g' |
		a'8 a' g' a' | b'8\fermata e' d' \melisma fis' \melismaEnd |
		g'16 g' e'8 d' e'8 | g'8 g' g' g'16 g' |
		a'8 g' e' e' | e'4 \bar "||"
	    }
	}
    }
    \lyricsto "" \new Lyrics
    {
        \override LyricText #'font-size = #0
        \override StanzaNumber #'font-size = #-1

	Pray on, pray on;
	Pray on dem light us o -- ver;
	Pray on, pray on, De u -- nion break of day.
	My sis -- ter, you come to see bap -- tize,
	In de u -- nion break of day;
	%% FIXME: 'loved on two notes???
	My 'loved sis -- ter, you come to see bap -- tize,
	%% FIXME: un -- ion but u -- nion above???
	In de un -- ion break of day.
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
