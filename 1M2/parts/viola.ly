\version "2.18.0"
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
