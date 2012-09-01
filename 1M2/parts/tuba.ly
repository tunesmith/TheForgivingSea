\version "2.16.0"
\include "english.ly"
\include "../lib/parts.ily"

\header {
  	instrument = \markup \larger \larger "Tuba"
}

\include "../notes/tuba.ily"

\relative c'' { 
	\everyPartScore
	\keepWithTag #'part \tubaNotes	
}	
