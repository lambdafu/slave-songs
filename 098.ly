% 098.ly - Score sheet for "Don't Be Weary, Traveller"
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
%  title = "Don't Be Weary, Traveller"
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
	\key d \minor
	{
	    d''4 d'' f''4. e''8 | d''4. c''8 a'4 r |
	    c''8. c''16 c''4 c''4. c''8 | g'4 a' r2 |
	    d''4 d'' f''4. e''8 | d''4. c''8 a'4 r |
	    a'8. a'16 g'4 f' c' | cis'4 d' r4 r8 \bar "||" \break
%% FIXME: Maybe have the tie on g'8 g'8.
	    d'8 | d'4 e' f' g'8 g' | a'4 a' a' r |
	    c''8. c''16 c''4 c''4. c''8 | g'4 a' r2 |
	    d'4 e' f' g' | a'4 a' a' r | a'8. a'16 a'4 g'4. f'8 |
	    cis'4 d' r2 \bar "||"
	}
    }
    \lyricsto "" \new Lyrics
    {
        \override LyricText #'font-size = #0
        \override StanzaNumber #'font-size = #-1

	Don't be wear -- y, trav -- el -- ler,
	Come a -- long home to Je -- sus;
	Don't be wear -- y, trav -- el -- ler,
	Come a -- long home to Je -- sus.

	\set stanza = "1."
	My head got wet with the mid -- night dew,
	Come a -- long home to Je -- sus;
	An -- gels bear me wit -- ness too,
	Come a -- long home to Je -- sus.
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
