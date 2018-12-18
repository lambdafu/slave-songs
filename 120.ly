% 120.ly - Score sheet for "I Want To Die Like-A Lazarus Die"
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
%  title = "I Want To Die Like-A Lazarus Die"
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
	\key g \major
	{
	    r8 d''16 d'' b'8 d'' | g'8 g'16 g' g'8 \melisma a' \melismaEnd |
	    b'4 r |
	    a'8 a'16 a' a'8 \melisma b' \melismaEnd | a'8 d' g' a' |
	    b'8 b'16 b' e''8 \melisma e'' \melismaEnd |
	    d''8 d''16 d'' b'8 \melisma a' \melismaEnd |
	    g'8 g'16 g' a'8 \melisma a' \melismaEnd | g'4 r \bar "||"
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	Tit -- ty 'Rit -- ta die like -- a Lazarus die,
	Die like -- a Lazarus die;
	I want to die like -- a Lazarus die,
	like -- a Lazarus die, like -- a Lazarus die.
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	%% FIXME: Original uses braces and no "...".
	I "" want to "..."
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
