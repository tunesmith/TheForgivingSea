\version "2.18.0"
\include "english.ly"

celloNotes = \relative c {

	\time 3/4
	\key d \major
	\set tieWaitForNote = ##t
	\clef bass
	
	R2.*7
	
	a2.\p\<~
	a2.\mp\>~
	a2.
	
	R2.*3\!

	\tag #'part { \break }

	g2.\p\<~
	g2.\mp\>~
	g2.

	R2.*3\!

	a2.\p\<~
	a2.\mf\>~
	a2.

	\tag #'part { \break }
	
	R2.*2\!
	
	r2 d8--\mp d-- |
	d2.\<
	g2\mf\> d8--\mp d-- |
	d2\< d8-- d-- |
	e2.
	
	\tag #'part { \break }

	f,8\f( c'8 ~ c2) |
	c8(g'8 ~ g2) |
	b,8\mf\>(fs'?8 ~ fs2) |
	a,8(fs'8 ~ fs2) |

	\tag #'part { \break }
	
	e2\p\< e4
	fs2.\mp\>
	e2.\p ~ 
	e2.

	\tag #'part { \break }
	
	d2.\p ~
	d ~
	d ~
	d ~
	
	<< {a2.\fermata } {s4\> s4 s4\!} >>
		
	\bar "|."
	\tag #'part {
		\override Score.RehearsalMark.direction = #DOWN
		\override Score.RehearsalMark.self-alignment-X = #RIGHT  
		\override Score.RehearsalMark.font-size = #0
		\mark "00:01:06:09"			
	}
	
}