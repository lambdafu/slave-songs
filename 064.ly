% 064.ly - Score sheet for "Many Thousand Go."
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
%  title = "Many Thousand Go."
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

%% FIXME: Raise the two first fermatas?
	d''4 d'' b' e'' | d''4. b'8 g'4 r8\fermata c''8 |
	b'4.\fermata c''8 a'4\fermata r4 |
	d''4 d'' b' e'' | d''4. b'8 g'4 r4 |
	b'8 b'4. a'4. a'8 | g'4 \bar "||"
    }

    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	\set stanza = "1."
	No more peck o' corn for me, No more, no more;
	No more peck o' corn for me, Man -- y tou -- sand go.
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
