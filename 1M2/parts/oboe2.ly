\version "2.16.0"
\include "english.ly"
\include "../lib/parts.ily"

\paper {
	ragged-last-bottom = ##t
}

\header {
	instrument = \markup \larger \larger { 
		\override #'(baseline-skip . 2.5)
		\column {"Oboe 2" "(English Horn)" " "}
	}
}

\include "../notes/oboe2.ily"

<<
	\new Staff \relative c'' { 
		\everyPartScore
		\keepWithTag #'part \oboeTwoNotes
	}	
>>