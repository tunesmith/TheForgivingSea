\version "2.24.0"
\include "english.ly"

englishHornNotes = \relative c' {
	
	\tag #'part { \bar "||" \key d \major }
	
	\tag #'part { r2 a4\p^\markup { \halign #0.4 "English Horn"} | }
	\tag #'score { r2 a4\p^\markup { \smaller \halign #0.4 "English Horn"} | }
	
	\tag #'part { e'2( fs?4) | }
	\tag #'score { e2( fs4) | }
	
	\tag #'part { \break }
	
	\tag #'part { g?4.( fs8) e4 | }
	\tag #'score { g4.( fs8) e4 | }
	
	fs( 
		<< a2~ {s4 s\> } >> |
	a4) r\! r |
	
	R2.*22 
		
	\bar "|."	
	
}
oboeTwoNotes = \relative c' {

	\time 3/4
	\key d \major
	\set tieWaitForNote = ##t
	\textLengthOn	
	R2.*15 |

	\tag #'part { \transpose a e' \englishHornNotes }
	
	\tag #'score { \englishHornNotes }
		
}