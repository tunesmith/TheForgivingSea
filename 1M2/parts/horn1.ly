\version "2.16.0"
\include "english.ly"
\include "../lib/parts.ily"

\paper {
	ragged-last-bottom = ##t
}

\header {
	poet = "Horn 1 in F"
}

\include "../notes/horn1.ily"

<<
	\new Staff \relative c'' { 
		\everyPartScore
		\transpose f c'
		\keepWithTag #'part \hornOneNotes
	}	
>>