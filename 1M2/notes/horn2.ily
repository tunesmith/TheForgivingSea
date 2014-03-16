\version "2.18.0"
\include "english.ly"

hornTwoNotes = \relative c {

	\time 3/4
	\key d \major
	\tag #'score { \clef bass }
	\set tieWaitForNote = ##t

	R2.*7 |
	
	\tag #'part { fs?2\p\< gs4 | }
	\tag #'score { fs2\p\< gs4 | } 
	a2\mp\> gs4 |
	fs2. |
	
	R2.*3\! |

	\tag #'part { \break }

	e2\p\< fs4 |
	g?2\mp\> fs4 | 
	e2. |
	
	R2.*17\! |
	
	cs'2.\p\<( |
	d2.\mp\>) |
	
	\tag #'part { \break }
	
	d2.\p( |
	cs2. |
	d2) a4\p |
	a2. ~ |
	a2 a4\p |
	a2. ~ |
	\tag #'score { \override Script.padding = #1.5 }
	<< {a2.\fermata } {s4\> s4 s4\!} >>
	
	\bar "|."
	\tag #'part {
		\override Score.RehearsalMark.direction = #DOWN
		\override Score.RehearsalMark.self-alignment-X = #RIGHT  
		\override Score.RehearsalMark.font-size = #0
		\mark "00:01:06:09"			
	}	
}