\version "2.24.0"
\include "english.ly"
\include "../lib/parts.ily"

\header {
  	instrument = "Vibraphone"
}

\include "../notes/vibraphone.ily"

{ 
	\everyPartScore
	\keepWithTag #'part \vibraphoneNotes	
}	
