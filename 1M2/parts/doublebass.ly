\version "2.16.0"
\include "english.ly"
\include "../lib/parts.ily"

\header {
  	instrument = \markup \larger \larger "Double Bass"
}

\include "../notes/doublebass.ily"

<<
	\new Staff \relative c'' { 
		\everyPartScore
		\keepWithTag #'part \doubleBassNotes	
	}	
>>