\version "2.16.0"
\include "english.ly"
\include "../lib/parts.ily"

\header {
  	instrument = \markup \larger \larger "Vibraphone"
}

\include "../notes/vibraphone.ily"

\relative c'' { 
	\everyPartScore
	\keepWithTag #'part \vibraphoneNotes	
}	
