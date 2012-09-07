\version "2.16.0"
\include "english.ly"

timpaniNotes = \relative c, {

	\time 3/4
	\key d \major
	\clef bass
	\set tieWaitForNote = ##t

	R2.*42
	
	\bar "|."
		
}