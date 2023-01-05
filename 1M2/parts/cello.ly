\version "2.18.2"
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
