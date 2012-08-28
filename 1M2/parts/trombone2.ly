\version "2.16.0"
\include "english.ly"
\include "../lib/parts.ily"

\header {
  	poet = \markup \larger \larger "Trombone 2"
}

\include "../notes/trombone2.ily"

<<
	\new Staff \relative c'' { 
		\everyPartScore
		\keepWithTag #'part \tromboneTwoNotes	
	}	
>>