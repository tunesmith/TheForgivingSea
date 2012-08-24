\version "2.15.43"
\include "english.ly"

\header {
  instrument = "Oboe 1"
}

\include "../notes/oboe1.ily"

<<
	\new Staff \relative c'' { 
		\compressFullBarRests	
		\override MultiMeasureRest #'expand-limit = #2
		\oboeOneNotes
	}	
>>