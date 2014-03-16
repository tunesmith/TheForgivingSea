\version "2.18.0"
\include "english.ly"
\include "../lib/parts.ily"

\header {
  	instrument = "Double Bass"
}

\include "../notes/doublebass.ily"

{ 
	\everyPartScore
	\keepWithTag #'part \doubleBassNotes	
}	
