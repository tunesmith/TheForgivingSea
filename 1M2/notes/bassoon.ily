\version "2.18.2"
\include "english.ly"

bassoonNotes = \relative c {

	\time 3/4
	\key d \major
	\clef bass
	\set tieWaitForNote = ##t

	R2.*19 |
	
	r4 d\mp\<( e) |
	\tag #'part { fs?2\mf\>e4 | }
	\tag #'score { fs2\mf\>e4 | }
	d2. |
	
	R2.*7\! |
	
	\tag #'part { \break }
	
	f,2.\f |
	c' |
	b\mf\> |
	a2 r4\! |
	
	R2.*9
		
	\bar "|."
		
}