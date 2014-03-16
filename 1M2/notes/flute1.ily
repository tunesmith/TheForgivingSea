\version "2.18.0"
\include "english.ly"

fluteOneNotes = \relative c'' {

	\time 3/4
	\key d \major
	\set tieWaitForNote = ##t
	\override Score.RehearsalMark.self-alignment-X = #LEFT

	\tag #'part { R2.*3 }
	\tag #'score { 
		R2.*3^\mark \markup { \left-align \tiny "03:37:37:00" }
	}
	
	r2 a4\p |
	e'2( fs4) |
	g4.( fs8) e4 |
	fs( 
		<< a2~ {s4 s\> } >> |
	a4) r\! r | 
	
	\tag #'part { \break }
	
	R2.
	
	r2 fs4\p |
	g4.( fs8) e4 |
	fs2 d4 |
	\tag #'part { << e2.~ {s2 s4\> } >> | }
	\tag #'score {
		<< {e2.~^\mark \markup { \left-align \tiny "03:37:55:19" }} {s2 s4\> } >> |		
	} 
	e4 r\! r |
	
	R2. 
	
	\tag #'part { \break }
	
	r2 a,4\mp |
	e'2( fs4) |
	g4.( fs8) e4 |
	fs(
		<< a2~ {s4 s\> } >> |
	a4) r\! r |
	
	R2.
	
	\tag #'part { \break }
	
	r2 b8\mf( cs) |
	d4.( cs8) b4 |
	cs( a2) |
	<< b2.~ {s2 s4\> } >> |
	b4 r\! r |
	
	R2.*2
	
	\tag #'part { \break }
	
	r2 d8\f( e) |
	\tag #'part { f4.( e8) d4-- | }
	\tag #'score {
		f4.(^\mark \markup { \left-align \tiny "03:38:22:02" } e8) d4-- |		
	}
	e( c2) |
	d4.\mf\>( cs?8) b4-- | 
	cs( fs,?2) |
	
	\tag #'part { \break }
	
	\tag #'part { R2.*3\! }
	\tag #'score { R2.*3\!^\mark \markup { \left-align \tiny "03:38:28:09" }}
	
	r4 d'8\mp( cs b a) |
	g2.~ |
	g2.\> |
	
	\tag #'part { R2.*3\! }
	\tag #'score { 
		R2.*2\! 
		R2.^\mark \markup { \left-align \tiny "03:38:40:21" }
	}
	\bar "|."
		
}