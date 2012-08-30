\version "2.16.0"
\include "english.ly"
\include "../lib/parts.ily"

\paper {
	ragged-last-bottom = ##t
}

\header {
	instrument = \markup \larger \larger "Bassoon"
}

\include "../notes/bassoon.ily"

<<
	\new Staff \relative c'' { 
		\everyPartScore
		\keepWithTag #'part \bassoonNotes
	}	
>>