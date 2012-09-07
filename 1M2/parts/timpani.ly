\version "2.16.0"
\include "english.ly"
\include "../lib/parts.ily"

\paper {
	ragged-last-bottom = ##t
	ragged-right = ##f
}

\header {
  	instrument = "Timpani"
}

\include "../notes/timpani.ily"

{ 
	\everyPartScore
	\timpaniNotes	
}	
