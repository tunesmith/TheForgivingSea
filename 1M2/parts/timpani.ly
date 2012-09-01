\version "2.16.0"
\include "english.ly"
\include "../lib/parts.ily"

\paper {
	ragged-last-bottom = ##t
}

\header {
  	instrument = \markup \larger \larger "Timpani"
}

\include "../notes/timpani.ily"

{ 
	\everyPartScore
	\timpaniNotes	
}	
