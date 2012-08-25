\version "2.15.43"
\include "english.ly"

\paper {
	#(set-paper-size "letter")
	indent = 1\cm
	system-system-spacing #'basic-distance = #16
	markup-system-spacing #'basic-distance = #16
	top-markup-spacing #'basic-distance = #6
	last-bottom-spacing #'basic-distance = #8
	left-margin = 20\mm
	right-margin = 16\mm
	check-consistency = ##t
}

\header {
	title = \markup \normal-text \larger "The Forgiving Sea 1M2"
  	composer = \markup "Curt Siffert"
  	poet = \markup \larger \larger "Flute 2"
  	copyright = ""
  	tagline = ""
}

\include "../notes/flute2.ly"

#(set-global-staff-size 24)		
\layout{	
	\context { 
		\Score
  		\override MetronomeMark #'extra-offset = #'(-1.5 . 0)
    	\override MetronomeMark #'padding = #'2
    	\override MetronomeMark #'font-size = \smaller
	}
}

<<
	\new Staff \relative c'' { 
		\tempo 4 = 116
		\set Score.skipBars = ##t
		\override MultiMeasureRest #'expand-limit = #1
		\keepWithTag #'part \fluteTwoNotes 		
	}	
>>
