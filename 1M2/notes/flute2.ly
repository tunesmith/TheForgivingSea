\version "2.16.0"
\include "english.ly"

fluteTwoNotes = \relative c'' {

	\time 3/4
	\key d \major
	\set tieWaitForNote = ##t
	
	R2.*19
	
	a2.\mp\< |
	d2.\mf\!\> |
	a2. |
	
	R2.*7\!
	
	\tag #'part { \break }
	
	a'2\f a4-- |
	g(e2) |
	fs2\mf\> fs4--
	fs(cs2)
	
	R2.*9\!
	
	\bar "|."
		
}