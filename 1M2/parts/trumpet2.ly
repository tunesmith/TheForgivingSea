\version "2.18.2"
\include "english.ly"
\include "../lib/parts.ily"

\paper {
	ragged-last-bottom = ##t
}

\header {
	instrument = \markup { "Trumpet 2 in B"\flat }
}

\include "../notes/trumpet2.ily"

{ 
	\everyPartScore
	\transpose bf c'
	\keepWithTag #'part \trumpetTwoNotes
}	
