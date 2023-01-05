\version "2.18.2"
\include "english.ly"
\include "../lib/parts.ily"

\paper {
	ragged-last-bottom = ##t
}

\header {
	instrument = "Horn 2 in F"
}

\include "../notes/horn2.ily"

{ 
	\everyPartScore
	\transpose f c'
	\keepWithTag #'part \hornTwoNotes
}	
