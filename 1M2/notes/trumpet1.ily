\version "2.16.0"
\include "english.ly"

trumpetOneNotes = \relative c'' {

	\time 3/4
	\key d \major
	\set tieWaitForNote = ##t

	R2.*25 |
	
	\tag #'part { r4 b\mp\<( cs? | }
	\tag #'score { r4 b\mp\<( cs | }
	d2\mf\> cs4) |
	
	r4\! b2\mp\<( |
	<< {cs2.)} {s2 s4\f} >> |

	\tag #'part { \break }
	
	R2.*8
	
	d,2.~\p|
	d~|
	d~|
	d~|
	<< {d\fermata } {s4\> s4 s4\!} >>
	\bar "|."
	\tag #'part {
		\override Score.RehearsalMark #'direction = #DOWN
		\override Score.RehearsalMark #'self-alignment-X = #RIGHT  
		\override Score.RehearsalMark #'font-size = #0
		\mark "00:01:06:09"			
	}		
	
}