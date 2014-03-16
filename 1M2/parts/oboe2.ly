\version "2.18.0"
\include "english.ly"
\include "../lib/parts.ily"

\paper {
	ragged-last-bottom = ##t
}

\header {
	instrument = \markup { 
		\override #'(baseline-skip . 2.7)
		\column {"Oboe 2" "(English Horn)" " "}
	}
}

\include "../notes/oboe2.ily"

{ 
	\everyPartScore
	\keepWithTag #'part \oboeTwoNotes
}	
