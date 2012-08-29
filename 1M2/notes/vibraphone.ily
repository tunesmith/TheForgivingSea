\version "2.16.0"
\include "english.ly"

vibraphoneNotes = \relative c'' {

	\time 3/4
	\key d \major
	\set tieWaitForNote = ##t
	\set Staff.pedalSustainStyle = #'bracket


	d,2\p\sustainOn^\markup{\smaller "motor off"} a'8 a |
	d2 a8 a |
	d,2 a'8 a |
	d2 a8 a |
	d,2 a'8 a |
	
	\tag #'part { \break }
	
	d2 a8 a |
	d,2 a'8 a |
	d2. |
	
	R2.\sustainOff
	
	r2 a8\p\sustainOn a |
	d,2 a'8 a |
	
	\tag #'part { \break }
	
	d2 a8 a |
	c,2\sustainOff\sustainOn g'8 g |
	c2. |
	
	R2.\sustainOff
	
	r2 a8\p\sustainOn a |
	d,2 a'8 a |
	
	\tag #'part { \break }

	d2 a8 a |
	d,2 a'8 a |
	d2. |
	
	R2.\sustainOff
	
	r2 fs,8\mp\sustainOn fs |
	
	\tag #'part { \break }

	b2 fs8\sustainOff\sustainOn fs |
	a2 e8\sustainOff\sustainOn e |
	g2.
	
	R2.*17\sustainOff
	
	\bar "|."
		
}