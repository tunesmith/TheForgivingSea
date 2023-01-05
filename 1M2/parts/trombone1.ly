\version "2.18.2"
\include "english.ly"
\include "../lib/parts.ily"

\header {
  	instrument = "Trombone 1"
}

\include "../notes/trombone1.ily"

{ 
	\everyPartScore
	\keepWithTag #'part \tromboneOneNotes	
}	
