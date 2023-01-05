\version "2.18.2"
\include "english.ly"

#(ly:set-option 'relative-includes #t)
\include "../lib/special-dynamics.ily"

mfsub = #(make-atr-dynamic-script "(subito)" "mf")

violaNotes = \relative c' {

	\time 3/4
	\key d \major
	\set tieWaitForNote = ##t
	\clef alto

	<< d2.\p {s4 s2\>}>> |
	
	r2\! a'8--\p a-- |
	<< d,2. {s4 s2\>}>> |

	r2\! a'8--\p a-- |
	<< d,2. {s4 s2\>}>> |
	
	r2\! a'8--_\markup {\italic "sim."} a-- |	
	
	\tag #'part { \break }
	
	d,2.
		
	R2.*2
	
	r2\! a'8-- a-- |	
	d,2.
	
	r2\! a'8-- a-- |	
	c,2.\>

	\tag #'part { \break }
	
	e,2\p\< fs4
	g2\mp\> fs4
	e2.
	
	d'2.\p\>
	
	r2\! a'8--\mp a-- |	
	<< d,2. {s4 s2\>}>> |

	\tag #'part { \break }

	r4\! fs\mp\< gs |
	a2\mf\> gs4 |
	fs2.
	
	b,2.\mfsub	
	a2.
	g?2.\>

	\tag #'part { \break }
	
	r4\! g\mp\<( a |
	b2\mf\> a4)
	
	r4\! g\f\<(a8 b |
	cs? d e2)
	
	r4\! f,8\f(g a4\>)
	r4\! c8\f(d e4\>)
	
	\tag #'part { \break }

	r4\! b8\mf(cs? e4\>)
	r4\! a,8\mp(b cs4\>)
	
	cs2\p\< cs4 |
	d2.\mp\>
	d2.\p

	\tag #'part { \break }
	
	cs2.
	g2.\mp~ |
	g2 d8 d |
	g2.~
	g2 d8 d
	
	
	<< {fs2.\fermata } {s4\> s4 s4\!} >>
		
	\bar "|."
	\tag #'part {
		\override Score.RehearsalMark.direction = #DOWN
		\override Score.RehearsalMark.self-alignment-X = #RIGHT  
		\override Score.RehearsalMark.font-size = #0
		\mark "00:01:06:09"			
	}
	
	
		
}