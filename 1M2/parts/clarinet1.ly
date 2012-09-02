\version "2.16.0"
\include "english.ly"
\include "../lib/parts.ily"

\paper {
	ragged-last-bottom = ##t
}

\header {
	instrument = \markup { "Clarinet 1 in B"\flat }
}

\include "../notes/clarinet1.ily"

{ 
	\everyPartScore
	\transpose bf c'
	\keepWithTag #'part \clarinetOneNotes
}	
