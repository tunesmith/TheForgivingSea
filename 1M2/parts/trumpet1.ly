\version "2.16.0"
\include "english.ly"
\include "../lib/parts.ily"

\paper {
	ragged-last-bottom = ##t
}

\header {
	poet = \markup { "Trumpet 1 in B"\flat }
}

\include "../notes/trumpet1.ily"

<<
	\new Staff \relative c'' { 
		\everyPartScore
		\transpose bf c'
		\keepWithTag #'part \trumpetOneNotes
	}	
>>