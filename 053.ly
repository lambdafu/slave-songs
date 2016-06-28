% 053.ly - Score sheet for "When we do meet again."
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
%  title = "When We Do Meet Again."
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

	\partial 4 g'8 b' | d''4 d''8. e''16 d''8[ b'] g'8 b' |
	c''4 c''8. d''16 c''4 c''8 d'' |
	e''4 e''8. d''16 c''4 a'8 c'' | b'4 a'8. g'16 g'8 \bar "||" \break
	g'16 g' b'8 d'' | a'4. b'8 a' a'16 a' c''8 e'' |
	d''4. b'8 d''4 g' | g'4 e'8 e' fis' a' c'' c'' |
	b'4 a'8. g'16 g'4 \bar "||"
    }

    \lyricsto "" \new Lyrics
    {
        \override LyricText #'font-size = #0
        \override StanzaNumber #'font-size = #-1

	When we do meet a -- gain,
	When we do meet a -- gain,
	When we do meet a -- gain,
	'Twill be no more to part.

	Broth -- er Bil -- ly, fare you well,
	Broth -- er Bil -- ly, fare you well,
	We'll sing hal -- le -- lu -- jah,
	when we do meet a -- gain.
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
