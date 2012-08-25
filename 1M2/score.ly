\version "2.16.0"
\include "english.ly"

#(set-global-staff-size 17)
\paper {
  indent = 3.0\cm  % space for instrumentName
  short-indent = 1.5\cm  % space for shortInstrumentName
}

\include "notes/flute1.ily"
\include "notes/flute2.ly"
\include "notes/oboe1.ily"
\include "notes/oboe2.ily"
\include "notes/clarinet1.ily"
\include "notes/clarinet2.ily"
\include "notes/bassoon.ily"

<<
	\new StaffGroup = "StaffGroup_woodwinds" <<
		\new Staff = "Staff_flute1" {
			\set Staff.instrumentName = #"Flute 1"
			\set Staff.shortInstrumentName = #"Fl."
			% midiInstrument may be set here as well
			\removeWithTag #'part \fluteOneNotes		
		}
		\new Staff = "Staff_flute2" {
			\set Staff.instrumentName = #"Flute 2"
			\set Staff.shortInstrumentName = #"Fl."
			% midiInstrument may be set here as well
			\removeWithTag #'part \fluteTwoNotes
		}
		\new Staff = "Staff_oboe1" {
			\set Staff.instrumentName = #"Oboe 1"
			\set Staff.shortInstrumentName = #"Ob."
			% midiInstrument may be set here as well
			\removeWithTag #'part \oboeOneNotes
		}
		\new Staff = "Staff_oboe2" {
			\set Staff.instrumentName = #"Oboe 2"
			\set Staff.shortInstrumentName = #"Ob."
			% midiInstrument may be set here as well
			\keepWithTag #'score \oboeTwoNotes
		}
		\new Staff = "Staff_clarinet1" {
			\set Staff.instrumentName = 
			\markup { \concat { "Clarinet 1 in B" \flat }}
			\set Staff.shortInstrumentName = #"Cl."
			% midiInstrument may be set here as well
			\keepWithTag #'score \clarinetOneNotes
		}
		\new Staff = "Staff_clarinet2" {
			\set Staff.instrumentName = 
			\markup { \concat { "Clarinet 2 in B" \flat }}
			\set Staff.shortInstrumentName = #"Cl."
			% midiInstrument may be set here as well
			\keepWithTag #'score \clarinetTwoNotes
		}
		\new Staff = "Staff_bassoon" {
			\set Staff.instrumentName = #"Bassoon"
			\set Staff.shortInstrumentName = #"Bsn."
			% midiInstrument may be set here as well
			\bassoonNotes 
		}
	>>
>>
