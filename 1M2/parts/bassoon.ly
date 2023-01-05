\version "2.18.2"
\include "english.ly"
\include "../lib/parts.ily"

\paper {
	ragged-last-bottom = ##t
}

\header {
	instrument = "Bassoon"
}

\include "../notes/bassoon.ily"

{ 
	\everyPartScore
	\keepWithTag #'part \bassoonNotes
}
