\version "2.16.0"
\include "english.ly"
\include "../lib/parts.ily"

\header {
  	instrument = \markup \larger \larger "Viola"
}

\include "../notes/viola.ily"

\relative c'' { 
	\everyPartScore
	\keepWithTag #'part \violaNotes	
}	
