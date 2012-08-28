\version "2.16.0"
\include "english.ly"

tromboneTwoNotes = \relative c {

	\time 3/4
	\key d \major
	\clef bass
	\set tieWaitForNote = ##t

	R2.*7
	
	a2\p\< a4 |
	d2\mp\> d4 |
	a2. |

	\tag #'part { \break }

	R2.*3\!
	
	g2\p\< g4 |
	c2\mp\> c4 |
	g2. |

	\tag #'part { \break }
	
	R2.*3\!
	
	a2.\p\<~ |
	a2.\mp\>~ |
	a2. |
	
	R2.*2\!

	\tag #'part { \break }
	
	r2 d8\mp d |
	d2.~ |
	d2 d8 d |
	d2\< d8 d |
	<< {e2.} {s2 s4\f} >> |

	\tag #'part { \break }
	
	R2.*4
	
	e2.\p\<( | 
	fs2.\mp\>) |
	e2.\p~
	e2.\>

	\tag #'part { \break }
	
	R2.\!
	
	r2 d4\p |
	d2.~ |
	d2 d4 |
	<< {a2.\fermata } {s4\> s4 s4\!} >>
	
	\bar "|."
	\tag #'part {
		\override Score.RehearsalMark #'direction = #DOWN
		\override Score.RehearsalMark #'self-alignment-X = #RIGHT  
		\override Score.RehearsalMark #'font-size = #0
		\mark "00:01:06:09"			
	}	
		
}