\version "2.18.2"
\include "english.ly"
\include "../lib/parts.ily"

\header {
  	instrument = "Trombone 2"
}

\include "../notes/trombone2.ily"

{ 
	\everyPartScore
	\keepWithTag #'part \tromboneTwoNotes	
}	
