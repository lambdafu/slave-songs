% 007.ly - Score sheet for "The Lonesome Valley."
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
%  title = "The Lonesome Valley."
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
    \key fis \minor
    
    \repeat volta 2
    {
      \partial 4*2 cis''4 cis''16 e''8. | cis''16 b' a'
      \override Stem #'neutral-direction = #1
      b'
      \override Stem #'neutral-direction = #-1
      b' cis''8. |
      a'4 b'8 cis''16 b' | a'8
      %% FIXME: Move the small notes further to the right/left.
      << { \stemUp fis'8 \stemNeutral }
	 << \\ { s32 \set fontSize = #'-4 \stemDown e'8*3/4 } >> >>
      << { \stemUp e'16 \stemNeutral }
	 << \\ { s32 s32 \set fontSize = #'-4 \stemDown fis'16*3/4 } >> >>
      << { \stemUp \once \override Script #'padding = #1
	   { fis'8\fermata } \stemNeutral }
	 << \\ { 
	   %% FIXME: s64 s64 didn't do the trick...
	   \override NoteHead  #'transparent = ##t
	   \override Stem  #'transparent = ##t
	   \override Beam  #'transparent = ##t
	   fis''64
	   fis''64
	   \revert NoteHead #'transparent
	   \revert Stem #'transparent
	   \revert Beam #'transparent
	   \set fontSize = #'-4 \stemDown a'8*3/4 } >> >>
    }
    \break
    \repeat volta 2
    {
      \override Stem #'neutral-direction = #1
      \partial 16 a'16\fermata | fis'8 fis'16 fis' fis'8 e' |
      fis'16 a'16~ a'4 cis'8 | e'8 e'16 e' e'8 cis'8 |
      e'16 fis'8 e'16 cis'8 e'8 | fis'8 fis'16 gis' a'8 b' |
      cis''4 a'8 a' | b'8 a' fis'
      <a' \tweak #'font-size #-4 e'>8
      fis'4 r4
    }
  }
  \lyricsto "" \new Lyrics
  {
    \override LyricText #'font-size = #0
    \override StanzaNumber #'font-size = #-1

    My brud -- der,¹ want to get re -- li -- gion?
    %% FIXME: Not sure what the etc. means.  Repeat "Go down..."?
    Go down in de lone -- some val -- "ley, etc."
    Go down in de lone -- some val -- ley,
    Go down in de lone -- some val -- ley, my Lord;
    Go down in de lone -- some val -- ley,
    To meet my Je -- sus dere.
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
      tempoWholesPerMinute = #(ly:make-moment 82 4)
      }
    }


}
