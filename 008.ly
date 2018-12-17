% 008.ly - Score sheet for "I can't stay behind."
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
%  title = "I can't stay behind."
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
    \key bes \major
	
    \repeat volta 2
    {
      \partial 8
      <\tweak font-size #-4 bes' d''>8 |
      <\tweak font-size #-4 d'' f''>4
      es''8. d''16 | c''8 a' f' a' | c''4 d''8. c''16 | bes'4 r8
    }
    \break
    \repeat volta 2
    {
      \override Stem.neutral-direction = #1
      << { \stemUp g'8 \stemNeutral }
	 << \\ { s32 \set fontSize = #'-4 \stemDown f'8*3/4 } >> >>
      | f'8 f'
      <\tweak font-size #-4 f' bes'>4 |
      << { \stemUp bes'16 d''8. \stemNeutral }
	 << \\ { \autoBeamOff \stemDown bes'8
		 \set fontSize = #'-4 bes'8 } >> >>
      bes'8 r | g'8 g' g' bes'16 bes' |
      \override Stem.neutral-direction = #-1
      f'8 f' f' r |
      f'8 f' f' r |
      %% FIXME: Variation is missing.
      bes'16 d''8. bes'8 bes' |
      c''4 d''8. c''16 | bes'4 r8
    }
  }
  \new Lyrics
  \lyricsto "" {
    \override LyricText.font-size = #0
    \override StanzaNumber.font-size = #-1

    %% FIXME: Can't use \emph here as this messes up with lilyponds
    %% with guessing algorithm.
    \set stanza = "Chor."
    I can't stay be -- hind, my Lord, I can't stay be -- hind!
    \set stanza = "1."
    Dere's room e -- nough, Room e -- nough,
    Room e -- nough in de heaven, my Lord;¹
    Room e -- nough, Room e -- nough, I can't stay be -- hind.
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
    \tempo 4 = 82
    }


}
