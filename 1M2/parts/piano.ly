\version "2.16.0"
\include "english.ly"
\include "../lib/parts.ily"
	

\header {
  	instrument = \markup \larger \larger "Piano"
}

\include "../notes/piano.ily"

\new PianoStaff \relative c'' { 
	<<
		\new Staff {
			\everyPartScore		
			\keepWithTag #'part \pianoUpNotes
		}
		\new Staff {
	  		\everyPartScore
			\keepWithTag #'part \pianoDownNotes
	  	}			
	>>
}	
