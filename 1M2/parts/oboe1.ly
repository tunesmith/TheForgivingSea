\version "2.18.2"
\include "english.ly"
\include "../lib/parts.ily"

\header {
  	instrument = "Oboe 1"
}

\include "../notes/oboe1.ily"

{ 
	\everyPartScore
	\keepWithTag #'part \oboeOneNotes
}	
