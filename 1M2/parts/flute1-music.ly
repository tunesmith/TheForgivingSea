\version "2.15.43"
\include "english.ly"

\header {
  instrument = "Flute 1"
}

\include "../notes/flute-1.ly"

<<
	\new Staff \relative c'' { 
		\compressFullBarRests	
		\override MultiMeasureRest #'expand-limit = #2
		\fluteOneNotes
	}	
>>