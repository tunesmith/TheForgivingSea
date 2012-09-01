\version "2.16.0"
\include "english.ly"
\include "../lib/parts.ily"

\header {
  	instrument = \markup \larger \larger "Flute 1"
}

\include "../notes/flute1.ily"

\relative c'' { 
	\everyPartScore
	\keepWithTag #'part \fluteOneNotes	
}	
