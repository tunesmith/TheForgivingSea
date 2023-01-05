\version "2.24.0"
\include "english.ly"
\include "../lib/parts.ily"

\header {
  	instrument = "Flute 1"
}

\include "../notes/flute1.ily"

{ 
	\everyPartScore
	\keepWithTag #'part \fluteOneNotes	
}	
