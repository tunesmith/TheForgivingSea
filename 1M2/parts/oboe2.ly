\version "2.15.43"
\include "english.ly"
\include "../lib/parts.ily"

\paper {
	ragged-last-bottom = ##t
}

\header {
	poet = \markup { 
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