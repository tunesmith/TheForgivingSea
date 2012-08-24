\version "2.15.43"
\include "english.ly"

\layout { ragged-right = ##f }

clarinetTwoNotes = \relative c' {

	\time 3/4
	\key d \major
	\set tieWaitForNote = ##t

	R2.*19 |
	r4 a\mp\<( b) |
	cs2\mf\>b4 |
	a2. |
	R2.*5\! |
	
	r4 g\mf\<( a8 b |
	cs d e2)\f |

	R2.*13
		
	\bar "|."
		
}