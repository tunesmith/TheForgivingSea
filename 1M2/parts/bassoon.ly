\version "2.15.43"
\include "english.ly"

\header {
  instrument = "Bassoon"
}

\include "../notes/bassoon.ily"

<<
	\new Staff \relative c'' { 
		\set Score.skipBars = ##t
		\override MultiMeasureRest #'expand-limit = #2
		\bassoonNotes
	}	
>>