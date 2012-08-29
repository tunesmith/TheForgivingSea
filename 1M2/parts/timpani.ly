\version "2.16.0"
\include "english.ly"
\include "../lib/parts.ily"

\paper {
	ragged-last-bottom = ##t
}

\header {
  	poet = \markup \larger \larger "Timpani"
}

\include "../notes/timpani.ily"

<<
	\new Staff \relative c'' { 
		\everyPartScore
		\timpaniNotes	
	}	
>>