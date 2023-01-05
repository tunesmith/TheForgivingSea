\version "2.18.2"
\include "english.ly"

harpUpNotes = \relative c' {

	\time 3/4
	\key d \major
	\set tieWaitForNote = ##t
	
	\textLengthOn
	
	d2.\p-\markup { \harp-pedal #"---|-v--"} |
	d'2. |
	\repeat unfold 2 {
		d,2. | d'2.
	}

	\tag #'part { \break }

	\repeat unfold 3 {
		d,2. | d'2.
	}

	\tag #'part { \break }

	\repeat unfold 2 {
		c,!2. | c'!2.
	}
	d,2.\mp 
	d'2.
	
	\tag #'part { \break }

	d,2.
	d'2.
	
	R2.*2
	
	<b, fs' b>2.\mf
	<a e' a> |
	<g d' g> |

	\tag #'part {
		\override Score.RehearsalMark.direction = #DOWN
		\override Score.RehearsalMark.break-visibility = #end-of-line-visible
		\override Score.RehearsalMark.self-alignment-X = #RIGHT  
		\mark \markup{ \eyeglasses }			
	}	
	\tag #'part { \break }
	
	s1*0_\markup { \concat { "E" \sharp "  " \harp-pedal #"---|vv--" }		
	}
	R2.*4
	
	R2.*4

	\tag #'part { \break }
	
	R2.*5
	
	d'2.\mp
	
	R2.
	
	d2.
	
	R2.
	
	\bar "|."
		
}

harpDownNotes = \relative c, {
	\dynamicUp
	\time 3/4
	\key d \major
	\clef bass
	\set tieWaitForNote = ##t
	
	R2.*12
	R2.*4
	R2.*4
	R2.*2
	
	R2.*3
	R2.*4
	
	es8\f( c' es2)
	\once \override Slur.details.accidental-collision = #10
	
	c8( g' c2)
	b,8\mf( fs' b2)
	a,8( fs' a2)
	
	R2.*9\!
	
	\bar "|."
		
}