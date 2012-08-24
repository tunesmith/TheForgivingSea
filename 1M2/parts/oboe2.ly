\version "2.15.43"
\include "english.ly"

\header {
  instrument = "Oboe 2"
}

\include "../notes/oboe2.ily"

<<
	\new Staff \relative c'' { 
		\set Score.skipBars = ##t
		\override MultiMeasureRest #'expand-limit = #2
		\oboeTwoNotes
	}	
>>