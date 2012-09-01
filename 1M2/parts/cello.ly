\version "2.16.0"
\include "english.ly"
\include "../lib/parts.ily"

\header {
  	instrument = \markup \larger \larger "Violoncello"
}

\include "../notes/cello.ily"

<<
	\new Staff \relative c'' { 
		\everyPartScore
		\keepWithTag #'part \celloNotes	
	}	
>>