\version "2.15.43"
\include "english.ly"

\header {
  instrument = "Clarinet 2"
}

\include "../notes/clarinet2.ily"

<<
	\new Staff \relative c'' { 
\set Score.skipBars = ##t
		\override MultiMeasureRest #'expand-limit = #2
		\transpose bf c'
		\clarinetTwoNotes
	}	
>>