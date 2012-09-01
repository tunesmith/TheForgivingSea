\version "2.16.0"
\include "english.ly"
\include "../lib/parts.ily"

\paper {
	ragged-last-bottom = ##t
	max-systems-per-page = #4
}	

\header {
  	instrument = \markup \larger \larger "Harp"
}

\include "../notes/harp.ily"

\new PianoStaff \relative c'' { 
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
