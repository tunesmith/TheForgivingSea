\version "2.18.2"
\include "english.ly"

tubaNotes = \relative c, {

	\time 3/4
	\key d \major
	\clef bass
	\set tieWaitForNote = ##t

	R2.*7
	
	d2.\p\<~ |
	d2.\mp\>~ |
	d2. |

	\tag #'part { \break }

	R2.*3\!
	
	c2.\p\<~ |
	c2.\mp\>~ |
	c2. |

	\tag #'part { \break }
	
	R2.*3\!
	
	d2.\p\<~ |
	d2.\mp\>~ |
	d2. |

	\tag #'part { \break }
	
	R2.*2\!
	
	r2 d'8\mp d |
	g,2.~ |
	g2 d'8 d |
	g,2\< g8 g |
	<< {g2.} {s2 s4\f} >> |

	\tag #'part { \break }
	
	R2.*4
	
	g2.\p\<~ | 
	g2.\mp\> |
	a2.\p~
	a2.\>
	
	R2.*4\!

	<< {d,2.\p\fermata } {s4\> s4 s4\!} >>
	
	\bar "|."
	\tag #'part {
		\override Score.RehearsalMark.direction = #DOWN
		\override Score.RehearsalMark.self-alignment-X = #RIGHT  
		\override Score.RehearsalMark.font-size = #0
		\mark "00:01:06:09"			
	}	
		
}