\version "2.15.43"
\include "english.ly"

\header {
  instrument = "Flute 2"
}

\include "../notes/flute-2.ly"

<<
	\new Staff \relative c'' { 
		\compressFullBarRests	
		\override MultiMeasureRest #'expand-limit = #2
		\fluteTwoNotes
	}	
>>
