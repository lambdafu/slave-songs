% 089.ly - Score sheet for "Sabbath Has No End"
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
%  title = "Sabbath Has No End"
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
	\key f \major
	{
	    \repeat volta 2
	    {
		\partial 8 f'16 f' |
		a'16 a' c''8 des'' c''16 c'' | c''16 d'' c'' a' c''8 r |
		a'16 a' c''8 des'' c''16 c'' | c''16 d'' c'' d'' f'8 r |
		\break
		a'16 a' c''8 des'' c''16 c'' | c''16 d'' c'' a' c''8 r |
		c''8 d'' a' g' | f'4 r8
	    }
	    \break

	    \partial 2 a'8 c'' es'' c'' | es''16[ d''] c''8 r4 |
	    a'8 c'' es'' c'' | d''8[ es''] r8. a'16 |
	    a'16 a' c''8 es''8 c''16 c'' | es''16[ d''] c''8 r c''16 c'' |
	    c''8 d'' a' g' f'4 r8
	    \bar "||"
	}
    }
    \lyricsto "" \new Lyrics
    {
        \override LyricText #'font-size = #0
        \override StanzaNumber #'font-size = #-1

	\set stanza = "1."
	Gwine to walk a -- bout Zi -- on, I real -- ly do be -- lieve;
	Walk a -- bout Zi -- on, I real -- ly do be -- lieve;
	Walk a -- bout Zi -- on, I real -- ly do be -- lieve;
	Sab -- bath has no end.
	I did view one an -- gel
	In one an -- gel stand;
	Let's mark him right down with the fore -- half,
	With the har -- press in his hand.
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
