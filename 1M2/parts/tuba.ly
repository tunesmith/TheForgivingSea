\version "2.24.0"
\include "english.ly"
\include "../lib/parts.ily"

\header {
  	instrument = "Tuba"
}

\include "../notes/tuba.ily"

{ 
	\everyPartScore
	\keepWithTag #'part \tubaNotes	
}	
