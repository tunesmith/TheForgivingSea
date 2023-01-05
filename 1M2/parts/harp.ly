\version "2.24.0"
\include "english.ly"
\include "../lib/parts.ily"

\paper {
	ragged-last-bottom = ##t
	max-systems-per-page = #4
}	

\header {
  	instrument = "Harp"
}

\include "../notes/harp.ily"

\new PianoStaff { 
	<<
		{
			\everyPartScore		
			\keepWithTag #'part \harpUpNotes
		}
		{
	  		\everyPartScore
			\keepWithTag #'part \harpDownNotes
	  	}			
	>>
}	
