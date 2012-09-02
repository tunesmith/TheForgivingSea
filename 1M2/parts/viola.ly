\version "2.16.0"
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
