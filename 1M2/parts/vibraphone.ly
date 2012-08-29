\version "2.16.0"
\include "english.ly"
\include "../lib/parts.ily"

\header {
  	poet = \markup \larger \larger "Vibraphone"
}

\include "../notes/vibraphone.ily"

<<
	\new Staff \relative c'' { 
		\everyPartScore
		\keepWithTag #'part \vibraphoneNotes	
	}	
>>