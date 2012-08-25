\version "2.16.0"
\include "english.ly"
\include "../lib/parts.ily"

\header {
  	poet = \markup \larger \larger "Flute 1"
}

\include "../notes/flute1.ily"

<<
	\new Staff \relative c'' { 
		\everyPartScore
		\keepWithTag #'part \fluteOneNotes	
	}	
>>