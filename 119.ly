% 119.ly - Score sheet for "Good News, Member"
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
%  title = "Good News, Member"
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
	\key d \major
	{
	    \repeat volta 2
	    {
		\partial 2 d''8 d'' a' b' | d''8 d''4 e''16 e'' |
		fis''8. e''16 d''8 b' |
		a'8 a' fis'4 | e'8 e' fis' a' | b'8 b'4 a'16 a' |
		b'16 b' a'8 fis'8. fis'16 | e'4 r8
	    }
	    \repeat volta 2
	    {
		e'8 | e'16 e' e' e' d'8 fis' | a'8 a' fis'4 |
		<d' d''>8 <d' d''>8 <b b'>8 <cis' cis''>8 |
		<d' d''>8 <d' d''>4 e'8 | fis'16 fis' fis' fis' e'8 d' |
		a'8 a' cis'' cis''16 cis'' | b'16 b' a'8 fis'8. fis'16 |
		e'4 r8 \bar "||"
	    }
	}
    }
    \lyricsto "" \new Lyrics
    {
        \override LyricText #'font-size = #0
        \override StanzaNumber #'font-size = #-1

	Good news, mem -- ber, good news, mem -- ber,
	Don't you mind what Sa -- tan say;
	Good news, mem -- ber, good news,
	And I hear -- de from heav'n to -- day.

	\set stanza = "1."
	My brud -- der have a seat and I so glad,
	Good news, mem -- ber, good news;
	My brud -- der have a seat and I so glad,
	And I hear -- de from heav'n to -- day.
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
