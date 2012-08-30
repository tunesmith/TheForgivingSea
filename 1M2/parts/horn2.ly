\version "2.16.0"
\include "english.ly"
\include "../lib/parts.ily"

\paper {
	ragged-last-bottom = ##t
}

\header {
	instrument = \markup \larger \larger "Horn 2 in F"
}

\include "../notes/horn2.ily"

<<
	\new Staff \relative c'' { 
		\everyPartScore
		\transpose f c'
		\keepWithTag #'part \hornTwoNotes
	}	
>>