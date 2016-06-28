% 045.ly - Score sheet for "My body rock 'long fever."
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
%  title = "My Body Rock 'Long Fever"
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
	\key g \major

	\repeat volta 2
	{
	    \partial 1 g'4 g' e' e' | g'8 g' b' b' b'2 |
	    g'8 g' b' b' d''4 d'' |
	    b'4 b'8 a' g'4 e' | a'4 g' e' e' |
	    g'8 g' b' b' a'4\fermata e'8 e' |
	    <e' \tweak #'font-size #-4 g'>4 g'8 
	    <e' \tweak #'font-size #-4 g'>8 g'4
	    <g' \tweak #'font-size #-4 fis'>4 |
	    e'2 r4
	}
	\repeat volta 2
	{
	    g'8 g' | e'4 g' e' d' | g'4 g'2 d''4( |
	    d''4) b'8 b' e''4 d''8 d'' | d''2 r4 b' | g'4 g' e' d'8 d' |
	    g'4 g'2 a'4 | b'8 b' b'4 g'8 g' g'4 | e'2 r4
	}
     }

    \lyricsto "" \new Lyrics
    {
        \override LyricText #'font-size = #0
        \override StanzaNumber #'font-size = #-1

	Wai', my brud -- der,¹ bet -- ter true
	be -- lieve,²
	Bet -- ter true be long time get o -- ver cros -- ses;
	Wai', my sis -- ter, bet -- ter true be -- lieve,
	An' 'e get up to heaven at last.
	O my bo -- dy rock 'long fev -- er, O!
	wid a pain in 'e head!
	I wish I been  to de king -- dom, to sit a -- long side o' my Lord!
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
      tempoWholesPerMinute = #(ly:make-moment 80 4)
      }
    }


}
