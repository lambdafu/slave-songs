% 114.ly - Score sheet for "O Daniel"
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
%  title = "O Daniel"
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
	\key d \minor
	{
	    \partial 4 a'4 | d''4. d''8 d''4 d'' | cis''4 a'2 a'4 |
	    d''4. bes'8 cis''4 d'' | a'2. a'4 | d''2 a'4 f'8 g' |
	    a'4 a' d' e'8 f' | g'8 f'4 d'8 e'4 e' | d'2. d'4 |
	    f'4 d'8. d'16 d'8 f'4. | a'4. a'8 a'8.([ g'16] f'4) |
	    g'4. g'8 g'8.([ f'16] e'4) | f'4. d'8 d'4~ d' |
	    f'4 d'8. d'16 d'8 f'4. | a'4. a'8 a'8.([ g'16] f'4) |
	    a'8 g'4 e'8 f' g' e'4 | d'2. \bar "||"
	}
    }
    \new Lyrics
    \lyricsto "" {
        \override LyricText.font-size = #0
        \override StanzaNumber.font-size = #-1

	You call your -- self church -- mem -- ber,
	You hold your head so high,
	You praise God with your glitt' -- ring tongue,
	But you leave all your heart be -- hind.
	O my Lord de -- li -- vered Dan -- iel,
	O Dan -- iel, O Dan -- iel,
	O my Lord de -- li -- vered Dan -- iel,
	O why not de -- li -- ver me too?
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
