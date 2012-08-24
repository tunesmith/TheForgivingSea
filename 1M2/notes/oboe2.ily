\version "2.15.43"
\include "english.ly"

\layout { ragged-right = ##f }

oboeTwoNotes = \relative c' {

	\time 3/4
	\key d \major
	\set tieWaitForNote = ##t
	\textLengthOn	
	R2.*15 |
	r2^"English Horn" a4\p |
		e'2( fs4) |
	g4.( fs8) e4 |
	fs( 
		<< a2~ {s4 s\> } >> |
	a4) r\! r |
	
	R2.*22 
		
	\bar "|."
		
}