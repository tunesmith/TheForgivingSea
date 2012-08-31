\version "2.16.0"
\include "english.ly"
\include "../lib/parts.ily"
	

\header {
  	instrument = \markup \larger \larger "Violins I & II"
}

\include "../notes/violin1.ily"
\include "../notes/violin2.ily"

\new StaffGroup \relative c'' { 
	<<
		\new Staff {
			\everyPartScore		
			\keepWithTag #'part \violinOneNotes
		}
		\new Staff {
	  		\everyPartScore
			\keepWithTag #'part \violinTwoNotes
	  	}			
	>>
}	
