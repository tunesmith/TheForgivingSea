\version "2.16.0"
\include "english.ly"
\include "../lib/parts.ily"

\header {
  	poet = \markup \larger \larger "Tuba"
}

\include "../notes/tuba.ily"

<<
	\new Staff \relative c'' { 
		\everyPartScore
		\keepWithTag #'part \tubaNotes	
	}	
>>