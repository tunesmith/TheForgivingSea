\version "2.16.0"
\include "english.ly"

#(ly:set-option 'relative-includes #t)
\include "../lib/special-dynamics.ily"

mfsub = #(make-atr-dynamic-script "(subito)" "mf")

violinTwoNotes = \relative c'' {

	\time 3/4
	\key d \major
	\set tieWaitForNote = ##t

	a2\p a8-- a-- |
	\repeat unfold 6 { a2 a8-- a-- | }
	
	a2.
	d,2.

	a'2 a8-- a-- |
	\repeat unfold 2 { a2 a8-- a-- | }
	g2 g8-- g-- |
	g2.
	c,2.
	g'2 a8-- a-- |
	
	a2\mp a8-- a-- |
	\repeat unfold 2 { a2 a8-- a-- | }
	
	a2\< a4 
	d2.\mf\>
	a2 fs8\mfsub fs |
	fs2 fs8 fs
	
	\tag #'part {
		\override Score.RehearsalMark #'direction = #DOWN
		\override Score.RehearsalMark #'break-visibility = #end-of-line-visible
		\override Score.RehearsalMark #'self-alignment-X = #RIGHT  
		\mark \markup{ \eyeglasses }			
	}
	\tag #'part { \break }

	e2 e8 e
	d2.\>
	
	r4\! b'\mp\<( cs?
	d2\mf\>cs4)
	
	r4\! b2\mp\<(
	cs2.)\mf\<
	
	a'2\f a4--
	g!( e2)
	
	fs\> fs4--
	fs( cs?2)
	
	gs'4.\mf( fs8) e4
	fs2\> d4
	e2.\mp~
	e4 r a,,4\mp~
	
	a2 a8 a
	d2.~
	d2 a8 a
	d2.~

	<< {d\fermata } {s4\> s4 s4\!} >>
		
	\bar "|."
	\tag #'part {
		\override Score.RehearsalMark #'direction = #DOWN
		\override Score.RehearsalMark #'self-alignment-X = #RIGHT  
		\override Score.RehearsalMark #'font-size = #0
		\mark "00:01:06:09"			
	}
}