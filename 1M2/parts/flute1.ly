\version "2.15.43"
\include "english.ly"

\paper {
	ragged-last-bottom = ##f
	#(set-paper-size "letter")
	indent = 0\cm
}
\header {
	title = \markup \larger "The Forgiving Sea 1M2"
  	composer = \markup \larger "Curt Siffert"
  	piece = \markup \larger \larger "Flute 1"
  	copyright = ""
  	tagline = ""
}

\include "../notes/flute1.ily"

<<
	\new Staff \relative c'' { 
		\tempo 4 = 116
		\set Score.skipBars = ##t
		\override MultiMeasureRest #'expand-limit = #1
		\keepWithTag #'part \fluteOneNotes		
	}	
>>