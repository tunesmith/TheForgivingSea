\version "2.15.43"
\include "english.ly"

\layout { ragged-right = ##f }

bassoonNotes = \relative c {

	\time 3/4
	\key d \major
	\clef bass
	\set tieWaitForNote = ##t

	R2.*19 |
	
	r4 d\mp\<( e) |
	fs2\mf\>e4 |
	d2. |
	
	R2.*7\! |
	
	f,2.\f |
	c' |
	b\mf\> |
	a2 r4\! |
	
	R2.*9
		
	\bar "|."
		
}