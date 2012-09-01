\version "2.16.0"
\include "english.ly"
\include "../lib/parts.ily"

\paper {
	ragged-last-bottom = ##t
}

\header {
	instrument = \markup \larger \larger { "Clarinet 2 in B"\flat }
}

\include "../notes/clarinet2.ily"

\relative c'' { 
	\everyPartScore
	\transpose bf c'
	\keepWithTag #'part \clarinetTwoNotes
}	
