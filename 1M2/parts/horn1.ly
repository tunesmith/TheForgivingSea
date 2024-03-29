\version "2.24.0"
\include "english.ly"
\include "../lib/parts.ily"

\paper {
	ragged-last-bottom = ##t
}

\header {
	instrument = "Horn 1 in F"
}

\include "../notes/horn1.ily"

{ 
	\everyPartScore
	\transpose f c'
	\keepWithTag #'part \hornOneNotes
}	
