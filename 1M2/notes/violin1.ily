\version "2.16.0"
\include "english.ly"

 #(ly:set-option 'relative-includes #t)
\include "../lib/special-dynamics.ily"

mfsub = #(make-atr-dynamic-script "(subito)" "mf")

violinOneNotes = \relative c'' {

	\time 3/4
	\key d \major
	\set tieWaitForNote = ##t

	r2\p a8-- a-- |
	<< d2. {s2 s4\>}>>
	
	r2\! a8--\p a-- |
	<< d2. {s2 s4\>}>>

	r2\! a8--_\markup {\italic "sim."} a-- |
	d2.
	
	r2 a8-- a-- |
	d2.
	a2.
	d2.
	
	r2 a8-- a-- |
	d2.
	
	r2 g,8-- g-- |
	c2.
	
	g2.
	c2
	
	a8 a |
	
	a2 a8--\mp a8 |
	d2.
	
	r2 a8-- a8 |
	a2\< a4
	d2.\mf\>
	a2.
	b2.\mfsub
	a2.
	g2.\>
		
	R2.*3\!
	
	r2 d''8(\f e)
	f4.( e8) d4--
	e(c2)
	
	d4.\>(cs?8) b4--
	cs4( fs,?2)
	
	g4.(\mf fs8) e4
	fs2\> d4
	
	e2.\mp~
	e4 r a,,(\mp
	d2.)~
	d~
	d~
	d~
	<< {d\fermata } {s4\> s4 s4\!} >>
	
	\bar "|."
		
}