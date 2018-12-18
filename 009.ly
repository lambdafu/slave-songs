% 009.ly - Score sheet for "Poor Rosy."
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
%  title = "Poor Rosy."
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
	\key e \minor

	\repeat volta 2
	{
	    d''4 b'8 d'' | b'8[ a'] g'4 |
	    \override Stem.neutral-direction = #1
	    b'4 a'8 b' |
	    \override Stem.neutral-direction = #-1
	    g'8[ fis'] e'4 |
	    g'8 g' fis' e' | g'4 b | d'8 b16 b d'8 d' | e'4 r
	}
	\break
	\repeat volta 2
	{
	    \partial 8 e'16[ fis'] |
	    g'8 g' g'16[ fis'] e'[ fis'] |
	    g'8
	    <d' \tweak font-size #-4 g'>8
	    <b \tweak font-size #-4 g'>4 |
	    d'8 b16 b d'8 d' | e'4 r8 e'16[ fis'] |
	    g'8 g' g'16[ fis'] e'16[ fis'] | g'8 d'8 b4 |
	    d'8 b16 b d'8 d' | e'4 r8
	}
    }

    \new Lyrics
    \lyricsto "" {
      \override LyricText.font-size = #0
      \override StanzaNumber.font-size = #-1

      \set stanza = "1."
      Poor Ro -- sy, poor gal;¹ Poor Ro -- sy, poor gal;
      Ro -- sy break my poor heart, Heav'n shall -- a be my home.
      I can -- not stay in hell one day, Heav'n shall -- a be my home;
      I'll sing and pray my soul a -- way, Heav'n shall -- a be my home.
    }
>>

var =
<<
     \context Voice = "var"
    {
	\set Staff.midiInstrument = "acoustic grand"
	\autoBeamOff
	\time 2/4
	\clef violin
	\key c \major
				% FIXME: This should probably be e minor (same as above).  Also see the next FIXME.
	\repeat volta 2
	{
	    \partial 8 e'8 |
	    e'8 e' g' e' |
	    d'8 d' b4 |
				% FIXME: This looks like a mistake.  The f' should likely be a fis'.
	    g'16 g' g' g' g'8 f' | e'4 r8
	}
    }
    \new Lyrics
    \lyricsto "var" {
	Be -- fore I stay in hell one day, Hea -- ven shall -- a be my home;
    }
    \new Lyrics
    \lyricsto "var" {
	I sing and pray my soul a -- way, Hea -- ven shall -- a be my home.
    }
>>


\score
{
  \new Staff { \melody }

  \layout { indent = 0.0 }
}

%\score
%{
%  \new Staff { \var }
%
%  \layout { }
%
%  \header { piece = "Variation of Second Part"  }
%}

\score
{
  \new Staff { \unfoldRepeats \melody }


  \midi {
    \tempo 4 = 60
    }


}

\score
{
  \new Staff { \unfoldRepeats \var }


  \midi {
    \tempo 4 = 60
    }


}
