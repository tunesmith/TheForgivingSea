\version "2.24.0"
\include "english.ly"
\include "../lib/parts.ily"

\paper {
	ragged-last-bottom = ##t
}

\header {
  	instrument = "Flute 2"
}

\include "../notes/flute2.ily"

{ 
	\everyPartScore
	\keepWithTag #'part \fluteTwoNotes 		
}	
