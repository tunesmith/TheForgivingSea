\version "2.18.0"
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
