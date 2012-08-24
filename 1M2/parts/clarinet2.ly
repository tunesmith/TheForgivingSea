\version "2.15.43"
\include "english.ly"

\header {
  instrument = "Clarinet 2"
}

\include "../notes/clarinet2.ily"

<<
	\new Staff \relative c'' { 
		\compressFullBarRests	
		\override MultiMeasureRest #'expand-limit = #2
		\clarinetTwoNotes
	}	
>>