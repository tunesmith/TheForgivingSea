\version "2.24.0"
\include "english.ly"

trumpetTwoNotes = \relative c' {

	\time 3/4
	\key d \major
	\set tieWaitForNote = ##t

	R2.*25 |
	
	r4 d\mp\<( e |
	\tag #'part { fs?2\mf\> e4) | }
	\tag #'score { fs2\mf\> e4) | }
	
	r4\! d2\mp\<( |
	<< {e2.)} {s2 s4\f} >> |

	\tag #'part { \break }
	
	R2.*8
	
	d2.~\p|
	d~|
	d~|
	d~|
	<< {d\fermata } {s4\> s4 s4\!} >>
	\bar "|."
	\tag #'part {
		\override Score.RehearsalMark.direction = #DOWN
		\override Score.RehearsalMark.self-alignment-X = #RIGHT  
		\override Score.RehearsalMark.font-size = #0
		\mark "00:01:06:09"			
	}		
	
}