\version "2.16.0"
\include "english.ly"

tromboneOneNotes = \relative c {

	\time 3/4
	\key d \major
	\clef bass
	\set tieWaitForNote = ##t

	R2.*7
	
	d2\p\< e4 |
	fs2\mp\> e4 |
	d2. |

	\tag #'part { \break }

	R2.*3\!
	
	c2\p\< d4 |
	e2\mp\> d4 |
	c2. |

	\tag #'part { \break }
	
	R2.*9\!
	
	r4 g'\mp\<( a |
	b2\mf\> a4) |
	
	r4\! g2\mp\<( |
	<< {a2.)} {s2 s4\f} >> |

	\tag #'part { \break }
	
	R2.*4
	
	a2.\p\<( | 
	b2.\mp\>) |
	a2.\p~
	a2.\>

	\tag #'part { \break }
	
	R2.\!
	
	r2 d,4\p |
	g2.~ |
	g2 d4 |
	<< {fs2.\fermata } {s4\> s4 s4\!} >>
	
	\bar "|."
	\tag #'part {
		\override Score.RehearsalMark #'direction = #DOWN
		\override Score.RehearsalMark #'self-alignment-X = #RIGHT  
		\override Score.RehearsalMark #'font-size = #0
		\mark "00:01:06:09"			
	}	
		
}