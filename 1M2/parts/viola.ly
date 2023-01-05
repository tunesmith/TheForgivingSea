\version "2.24.0"
\include "english.ly"
\include "../lib/parts.ily"

\header {
  	instrument = "Viola"
}

\include "../notes/viola.ily"

{ 
	\everyPartScore
	\keepWithTag #'part \violaNotes	
}	
