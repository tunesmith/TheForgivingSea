\version "2.18.2"
\include "english.ly"

pianoUpNotes = \relative c'' {

	\time 3/4
	\key d \major
	\set tieWaitForNote = ##t
		
	R2.*15
	
	r2 a8\mp a |
	<d, a'>2 a'8 a |
	<a d>2 a8 a |
	<d, a'>2 a'8 a |
	<a d>2. |
	
	R2.*16
	
	r2 a,4\mp( |
	d2) a8 a |
	d2. ~
	d2 a8 a
	d2. ~
	d2.\fermata 
				
	\bar "|."
	
}

pianoDownNotes = \relative c {
	\dynamicUp
	\time 3/4
	\key d \major
	\clef bass
	\set tieWaitForNote = ##t
	\set Staff.pedalSustainStyle = #'mixed
	
	R2.*15
	
	s2 s4\sustainOn
	R2.*4
		
	R2.*16\sustainOff
	
	R2.
	
	g'2.\sustainOn~
	g2 d8 d
	g2.~
	g2 d8 d
	fs2.\sustainOff\fermata
	
	\bar "|."
	\tag #'part {
		\override Score.RehearsalMark.direction = #DOWN
		\override Score.RehearsalMark.self-alignment-X = #RIGHT  
		\override Score.RehearsalMark.font-size = #0
		\mark "00:01:06:09"			
	}	
		
}