\version "2.16.0"
\include "english.ly"
\include "../lib/parts.ily"

\paper {
	ragged-last-bottom = ##t
}

\header {
	instrument = \markup \larger \larger { 
		\override #'(baseline-skip . 2.5)
		\column {"Glock. /" "Sus. Cymbal" " "}
	}
}

\include "../notes/percussion.ily"

<<
	\new Staff \with { \accepts "DrumVoice" } \relative c'' { 
		\everyPartScore
		\keepWithTag #'part \percussionNotes
	}	
>>