\version "2.15.43"
\include "english.ly"

#(set-global-staff-size 17)
\paper {
  indent = 3.0\cm  % space for instrumentName
  short-indent = 1.5\cm  % space for shortInstrumentName
}

\include "notes/flute-1.ly"
\include "notes/flute-2.ly"
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
			
			% shortInstrumentName, midiInstrument, etc.
			% may be set here as well
			\fluteOneNotes
		}
		\new Staff = "Staff_flute2" {
			\set Staff.instrumentName = #"Flute 2"
			\set Staff.shortInstrumentName = #"Fl."
			% shortInstrumentName, midiInstrument, etc.
			% may be set here as well
			\fluteTwoNotes
		}
		\new Staff = "Staff_oboe1" {
			\set Staff.instrumentName = #"Oboe 1"
			\set Staff.shortInstrumentName = #"Ob."
			% shortInstrumentName, midiInstrument, etc.
			% may be set here as well
			\oboeOneNotes
		}
		\new Staff = "Staff_oboe2" {
			\set Staff.instrumentName = #"Oboe 2"
			\set Staff.shortInstrumentName = #"Ob."
			% shortInstrumentName, midiInstrument, etc.
			% may be set here as well
			\oboeTwoNotes
		}
		\new Staff = "Staff_clarinet1" {
			\set Staff.instrumentName = 
			\markup { \concat { "Clarinet 1 in B" \flat }}
			\set Staff.shortInstrumentName = #"Cl."
			% shortInstrumentName, midiInstrument, etc.
			% may be set here as well
			\clarinetOneNotes
		}
		\new Staff = "Staff_clarinet2" {
			\set Staff.instrumentName = 
			\markup { \concat { "Clarinet 2 in B" \flat }}
			\set Staff.shortInstrumentName = #"Cl."
			% shortInstrumentName, midiInstrument, etc.
			% may be set here as well
			\clarinetTwoNotes
		}
		\new Staff = "Staff_bassoon" {
			\set Staff.instrumentName = #"Bassoon"
			\set Staff.shortInstrumentName = #"Bsn."
			% shortInstrumentName, midiInstrument, etc.
			% may be set here as well
			\bassoonNotes 
		}
	>>
>>