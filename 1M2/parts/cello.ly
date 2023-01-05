\version "2.24.0"
\include "english.ly"
\include "../lib/parts.ily"

\header {
  	instrument = "Violoncello"
}

\include "../notes/cello.ily"

{ 
	\everyPartScore
	\keepWithTag #'part \celloNotes	
}	
