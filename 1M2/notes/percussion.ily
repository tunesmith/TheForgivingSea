\version "2.18.2"
\include "english.ly"

% http://lsr.dsi.unimi.it/LSR/Item?id=431
num =
#(define-music-function (parser location musique) (ly:music?)
#{ \override Score.BarNumber.break-visibility = ##(#f #t #t)
  $musique \revert Score.BarNumber.break-visibility #})
  
percussionNotes = \relative c' {

	\time 3/4
	\clef percussion
	\set tieWaitForNote = ##t

	R2.*11 |
	
	\clef treble
	
	R2.^"Glock. (soft mallets)"
	
	c!2.
	c'!2.
	c,!2.
	c'!2.

	\tag #'part { \break }

	d,?2.
	
	R2.*11^"switch to sus. cymb."

	\new DrumVoice {
		\drummode {
			\num
			r4 ss2:16\<~^"sus.cymbal" |
			ss4\mf\laissezVibrer r r
		}		
	}


	R2.*12
		
	\bar "|."
		
}