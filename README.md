# Slave Songs of the United States, 1867

Digital Edition 2007, Version 1.0 ALPHA

This is the pre-release of the digital edition of "Slave Songs of the
United States".

To build the PDF file, you need approximately 700 MB of free disk
space and a full installation of LaTeX plus Lilypond 2.10.  Then
building the PDF as slave-songs.pdf is as simple as entering:

```
$ make
```

For any comments, please drop a note to
Marcus Brinkmann, marcus.brinkmann@rub.de.

## TODO

* Write new preface.  Solicite prefaces from experts in the field.
* Add pictures.
* Create lead sheets.
* ...

## Glitches

* Suppress line numbers in table of contents
* non-numbered stanzas in extra comments need to be centered or in
  some other way treated.  Ex: 022, 026, 028
* suboptimal linebreak:
```
041 last line?, 059 (but no space), 066, 079, 081, 082, 099
103 (but as in book), 107, 109, 112, 113, 114, 117, 118, 119,
122, 123, 124, 125b, 127, 129
```
* 021: \&, overlap stanza number.  could be done better.
* 048: Is a bit hacky.
* 061: could be done better.
* 067: valiant
* Kill page numbers on empty pages before "parts".

Things to watch out for:

* The fonts in Latex and Lilypond should match in style and size.
** Adjust style in Latex.
```
% Lilypond uses New Century Schoolbook for lyrics.
\usepackage{newcent}
```
* Adjust font size in Lilypond:
```
\override LyricText #'font-size = #0
\override StanzaNumber #'font-size = #-1
```
* Lilypond adds a left margin to all output, urgs.

Lilypond tweaks:

* Make a note head smaller:
```
\stemUp <a' \tweak #'font-size #-4 c''>8 \stemNeutral
```
