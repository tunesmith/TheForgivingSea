\version "2.18.0"
\include "english.ly"
\include "../lib/parts.ily"
	

\header {
  	instrument = "Piano"
}

\include "../notes/piano.ily"

\new PianoStaff { 
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
