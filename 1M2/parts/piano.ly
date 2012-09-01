\version "2.16.0"
\include "english.ly"
\include "../lib/parts.ily"
	

\header {
  	instrument = \markup \larger \larger "Piano"
}

\include "../notes/piano.ily"

\new PianoStaff \relative c'' { 
	<<
		{
			\everyPartScore		
			\keepWithTag #'part \pianoUpNotes
		}
		{
	  		\everyPartScore
			\keepWithTag #'part \pianoDownNotes
	  	}			
	>>
}	
