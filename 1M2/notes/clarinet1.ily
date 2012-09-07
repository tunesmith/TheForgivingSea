\version "2.16.0"
\include "english.ly"

clarinetOneNotes = \relative c' {

	\time 3/4
	\key d \major
	\set tieWaitForNote = ##t

	R2.*19 |
	
	r4 fs\mp\<( gs) |
	a2\mf\>gs4 |
	fs2. |
	
	\tag #'part { \break }
	
	R2.*5\! |
	
	r4 g,\mf\<( a8 b |
	\tag #'part { cs? }
	\tag #'score { cs } 
	d << {e2)} {s4 s4\f} >> |
	
	r4 f,8\f( g a4)\>
	
	\tag #'part { \break }

	r4\! c8\f( d e4)\>
	r4\! b8\mf( cs? d4)\>
	r4\! a8\mp( b cs4)\>
	
	R2.*9\!
		
	\bar "|."
		
}