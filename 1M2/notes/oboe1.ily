\version "2.18.0"
\include "english.ly"

 #(ly:set-option 'relative-includes #t)
\include "../lib/special-dynamics.ily"

% define some attributed dynamics
subp = #(make-atr-dynamic-script "(subito)" "mf")

oboeOneNotes = \relative c'' {

	\time 3/4
	\key d \major
	\set tieWaitForNote = ##t
	
	R2.*9
	r2 fs4\p |
	g4.( fs8) e4 |
	fs2 d4 |
	<< e2.~ {s2 s4\> } >> | 
	e4 r\! r |
	
	\tag #'part { \break }
	
	R2.*5
	a,2.\< |
	d2.\mf\> |
	a2 d8\subp( e) |

	\tag #'part { \break }
	
	fs4.( e8) d4 |
	e( cs2) |
	<< d2.~ {s2 s4\> } >> |
	d4 r\! r |
	
	R2.*2

	\tag #'part { \break }

	r2 d8\f( e) |
	f4.( e8) d4-- |
	e( c2) |
	d4.\mf\>( cs?8) b4-- | 
	cs( fs,?2) |
	
	\tag #'part { \break }

	R4*9\!
	r4 d''8\mp( cs b a) |
	g2.~ |
	g2.\> |

	R2.*3\!
		
	\bar "|."
		
}