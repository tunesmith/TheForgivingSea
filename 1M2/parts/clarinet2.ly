\version "2.24.0"
\include "english.ly"
\include "../lib/parts.ily"

\paper {
	ragged-last-bottom = ##t
}

\header {
	instrument = \markup { "Clarinet 2 in B"\flat }
}

\include "../notes/clarinet2.ily"

{ 
	\everyPartScore
	\transpose bf c'
	\keepWithTag #'part \clarinetTwoNotes
}	
