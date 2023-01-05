\version "2.18.2"
\include "english.ly"
\include "../lib/parts.ily"
	
\header {
  	instrument = "Violins I & II"
}

\include "../notes/violin1.ily"
\include "../notes/violin2.ily"

\new StaffGroup { 
	<<
		{
			\everyPartScore		
			\keepWithTag #'part \violinOneNotes
		}
		{
	  		\everyPartScore
			\keepWithTag #'part \violinTwoNotes
	  	}			
	>>
}	
