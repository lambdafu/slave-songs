% 041.ly - Score sheet for "I know when I'm going home."
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
%  title = "I Know When I'm Going Home"
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
	\key d \major

	\repeat volta 2
	{
	    \partial 8 d''8 |
	    d''8 d'' d'' d'' | e''8 e'' d'' r | e''4 e'' | b'4 r8 b' |
	    \break

	    d''8 d'' d'' d'' | a'16 a'8. fis'8 r | a'4 a' | fis'4 r8 a'16 a' |
	    \break

	    a'16 a'8 a'16 a'8 a'16 b' | fis'8 fis' r a'16 a' |
	    \break

	    a'16 a'8 a'16 a'8 a'16 b' | e'8 e' r a'16 a' |
	    \break

	    a'16 a'8 a'16 a'8 a'16 b' | fis'8 fis' r a'8 |
	    a'16 a'8. fis'8. e'16 | d'4 r8
	}
    }
    \new Lyrics
    \lyricsto "" {
      \override LyricText.font-size = #0
      \override StanzaNumber.font-size = #-1

	Old Sat -- an told me to my face,
	O yes, Lord, De God I see I nev -- er find,
	O yes, Lord.
	True be -- liev -- er, I know when I gwine home,
	True be -- liev -- er, I know when I gwine home,
	True be -- liev -- er, I know when I gwine home,
	I been a -- fraid to die.
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

% Tempo is about 4=100 to 4=120.
  
  \midi {
    \tempo 4 = 100
    }


}
