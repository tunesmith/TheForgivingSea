\version "2.16.0"
\include "english.ly"

clarinetTwoNotes = \relative c' {

	\time 3/4
	\key d \major
	\set tieWaitForNote = ##t

	R2.*19 |
	r4 a\mp\<( b) |
	\tag #'part { cs?2\mf\>b4 | }
	\tag #'score { cs2\mf\>b4 | }
	a2. |
	
	\tag #'part { \break }
	
	R2.*5\! |
	
	r4 g\mf\<( a8 b |
	\tag #'part { cs?8 d << {e2)} {s4 s4\f} >> | }
	\tag #'score { cs8 d << {e2)} {s4 s4\f} >> | }

	R2.*13
		
	\bar "|."
		
}