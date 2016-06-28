% 092.ly - Score sheet for "O Shout Away"
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
%  title = "O Shout Away"
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
	{
	    \partial 8 g'8 | g'4. c''8 d''4. d''8 |
	    f''8. f''16 e''[ d''] c''8 f''8. f''16 e''[ c''] a'8 |
	    b'4. c''8 a'4. fis'8 | d'8. d'16 fis'8 fis' g'4 r8 \bar "||"
	    g'8 | b'8 b' g' g' c'' c'' a' a' |
	    d''8 d'' b' g' c'' d'' a' g' |
	    \break
	    b'4. c''8 a'4. fis'8 | d'8. d'16 fis'8 fis' g'4 r8 \bar "||"
	}
    }
    \lyricsto "" \new Lyrics
    {
        \override LyricText #'font-size = #0
        \override StanzaNumber #'font-size = #-1

	O shout, O shout, O shout a -- way,
	And don't you mind,
	And glo -- ry, glo -- ry, glo -- ry in my soul!
	\set stanza = "1."
	And when 'twas night I thought 'twas day,
	I thought I'd pray my sould a -- way,
	And glo -- ry, glo -- ry, glo -- ry in my soul!
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
