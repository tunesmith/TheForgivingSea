\version "2.16.0"
\include "english.ly"
\include "../lib/parts.ily"

\header {
  	poet = \markup \larger \larger "Oboe 1"
}

\include "../notes/oboe1.ily"

<<
	\new Staff \relative c'' { 
		\everyPartScore
		\keepWithTag #'part \oboeOneNotes
	}	
>>