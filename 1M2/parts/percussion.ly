\version "2.18.0"
\include "english.ly"
\include "../lib/parts.ily"

\paper {
	ragged-last-bottom = ##t
}

\header {
	instrument = \markup { 
		\override #'(baseline-skip . 2.7)
		\column {"Glock. /" "Sus. Cymbal" " "}
	}
}

\include "../notes/percussion.ily"

\new Staff \with { \accepts "DrumVoice" } { 
	\everyPartScore
	\keepWithTag #'part \percussionNotes
}	
