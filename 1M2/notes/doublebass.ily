\version "2.18.2"
\include "english.ly"

doubleBassNotes = \relative c {

	\time 3/4
	\key d \major
	\set tieWaitForNote = ##t
	\clef bass
	
	R2.*7
	
	d2.\p\<~
	d2.\mp\>~
	d2.

	\tag #'part { \break }
	
	R2.*3\!

	c2.\p\<~
	c2.\mp\>~
	c2.

	R2.*3\!

	\tag #'part { \break }

	d2.\p\<~
	d2.\mf\>~
	d2.
	
	R2.*2\!

	r2 d'8--\mp d-- |

	\tag #'part { \break }
	
	g,2. ~
	g2.
	g2\< g8-- g-- |
	g2.
	
	f2.\f
	c'2.
	b2.\mf\>
	\override Hairpin.to-barline = ##f
	a2 fs?4\mp\<
	\override Hairpin.to-barline = ##t
	g2.\mf\> ~
	g2.
	a2.\p ~
	a2.

	\tag #'part { \break }
	
	g2.\p ~
	g ~
	g ~
	g ~
	
	<< {d2.\fermata } {s4\> s4 s4\!} >>
		
	\bar "|."
	\override Score.RehearsalMark.direction = #DOWN
	\override Score.RehearsalMark.self-alignment-X = #RIGHT  
	\override Score.RehearsalMark.font-size = #0
	\mark "00:01:06:09"			
	
}