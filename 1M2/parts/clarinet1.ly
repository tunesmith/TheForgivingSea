\version "2.15.43"
\include "english.ly"

\header {
  instrument = "Clarinet 1"
}

\include "../notes/clarinet1.ily"

<<
	\new Staff \relative c'' { 
		\set Score.skipBars = ##t
		\override MultiMeasureRest #'expand-limit = #2
		\transpose bf c'
		\clarinetOneNotes
	}	
>>