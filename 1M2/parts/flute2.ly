\version "2.16.0"
\include "english.ly"
\include "../lib/parts.ily"

\paper {
	ragged-last-bottom = ##t
}

\header {
  	poet = \markup \larger \larger "Flute 2"
}

\include "../notes/flute2.ly"

<<
	\new Staff \relative c'' { 
		\everyPartScore
		\keepWithTag #'part \fluteTwoNotes 		
	}	
>>
