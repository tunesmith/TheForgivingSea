\version "2.16.0"
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
