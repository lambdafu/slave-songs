% 135.ly - Score sheet for "Lolotte"
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
%  title = "Lolotte"
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
	\key f \minor
	{
	    \repeat volta 2
	    {
		\partial 1
		as'8. g'16 f'8 f' as' as' c''4 | g'8. f'16 e'8 e' g' g' c''4 |
		as'8. g'16 f'8 f' as' as' c''4 | g'8 bes' e' g' f'4 r8
	    }
	    \repeat volta 2
	    {
		f'16. as'32 | c''8 c'' des'' des'' c''4. bes'16. g'32 |
		as'8 as' c'' c'' g'4. f'16. as'32 |
		c''8 c'' bes' g' as'4. bes'16. g'32 |
		as'8 f' g' e' f'4 r8 
	    }
	    \break
	    \partial 1 as'8. g'16 f'8 f' as' as' c''4 |
	    g'8. f'16 e'8 e' g' g' c''4 |
	    \break
	    as'8. g'16 f'8 f' as' as' c'' \times 2/3 { bes'16 as' g' } |
	    f'16 as'8. g'16 bes'8. as'16 c''8. \times 2/3 { es''16 c'' as' }
	    f'16 as'16~ |
	    \break
	    as'8 g' f' e' f'4 r4 \bar "||"
	}
    }
    \lyricsto "" \new Lyrics
    {
        \override LyricText #'font-size = #0
        \override StanzaNumber #'font-size = #-1

	Pauve pi -- ti Lo -- lotte a mouin,
	Pauve pi -- ti Lo -- lotte a mouin,
	Pauve pi -- ti Lo -- lotte a mouin,
	Li gai -- gnin dou -- lair.
	Ca -- la -- lou por -- té ma -- drasse,
	li por -- té ji -- pom gar -- ni,
	Ca -- la -- lou por -- té ma -- drasse,
	li por -- té ji -- pom gar -- ni.
	Pauve pi -- ti Lo -- lotte a mouin,
	Pauve pi -- ti Lo -- lotte a mouin,
	Pauve pi -- ti Lo -- lotte a mouin,
	Li gai -- gnin dou -- lair, dou -- lair, dou -- lair,
	Li gai -- gnin dou -- lair dans cœue à li.

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
