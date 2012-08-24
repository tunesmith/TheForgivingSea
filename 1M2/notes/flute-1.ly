\version "2.15.43"
\include "english.ly"

fluteOneNotes = \relative c'' {

	\time 3/4
	\key d \major
	\set tieWaitForNote = ##t

	R4*3*3
	r2 a4\p |
	e'2( fs4) |
	g4.( fs8) e4 |
	fs( 
		<< a2~ {s4 s\> } >> |
	a4) r\! r |
	
	R4*3
	r2 fs4\p |
	g4.( fs8) e4 |
	fs2 d4 |
	<< e2.~ {s2 s4\> } >> | 
	e4 r\! r |
	
	R4*3
	r2 a,4\mp |
	e'2( fs4) |
	g4.( fs8) e4 |
	fs(
		<< a2~ {s4 s\> } >> |
	a4) r\! r |
	
	R4*3
	r2 b8\mf( cs) |
	d4.( cs8) b4 |
	cs( a2) |
	<< b2.~ {s2 s4\> } >> |
	b4 r\! r |
	
	R4*6
	r2 d8\f( e) |
	f4.( e8) d4-- |
	e( c2) |
	d4.\mf\>( cs?8) b4-- | 
	cs( fs,?2)\! |
	
	R4*9
	r4 d'8\mp( cs b a) |
	g2.~ |
	g2.\> |
	
	R2.*3\! 
	\bar "|."
		
}