\version "2.16.0"
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
