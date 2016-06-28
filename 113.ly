% 113.ly - Score sheet for "I'm In Trouble"
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
%  title = "I'm In Trouble"
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
	\key c \major
	{
	    \repeat volta 2
	    {
		g'4. g'8 a'16 c''8. c''4 | g'4. f'8 e'16 c'8. r4 |
		g'4. g'8 a'16 c''8. c''4 |
	    }
	    \alternative
	    {
		%% CHANGED: Slur removed (FIXME?).  Also below.
		{ \times 2/3 { c''8 b' a' } b'8. g'16 c''2^\markup { FINE } }
		{ \times 2/3 { c''8 b' a' } b'8. g'16
		  c''8. c''16 c''8. c''16 }
	    }
	    d''8. d''16 c''8. c''16 b'4 g'8. g'16 | 
	    \times 2/3 { c''8 b' a' } b'8. g'16 c''8. c''16 c''8. c''16 |
	    d''8. d''16 c''8. c''16 b'4 g'8. g'16 | 
	    \times 2/3 { c''8 b' a' } b'8. g'16 c''2^\markup { D. C. }
	    %% FIXME: What does that mean?
	    \set Score.repeatCommands = #'(end-repeat)
	}
    }
    \lyricsto "" \new Lyrics
    {
        \override LyricText #'font-size = #0
        \override StanzaNumber #'font-size = #-1

	I'm in troub -- le, Lord, I'm in troub -- le,
	I'm in troub -- le, Lord, troub -- le a -- bout my grave,
	troub -- le a -- bout my grave.
	Some -- times I weep, some -- times I mourn,
	I'm in troub -- le a -- bout my grave;
	Some -- times I can't do neith -- er one,
	I'm in troub -- le a -- bout my grave.
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
