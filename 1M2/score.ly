\version "2.16.0"
\include "english.ly"

#(set-global-staff-size 17)
\paper {
	#(set-paper-size "legal")
	indent = 3.0\cm  % space for instrumentName
	short-indent = 1.5\cm  % space for shortInstrumentName
}

\include "notes/flute1.ily"
\include "notes/flute2.ily"
\include "notes/oboe1.ily"
\include "notes/oboe2.ily"
\include "notes/clarinet1.ily"
\include "notes/clarinet2.ily"
\include "notes/bassoon.ily"

\include "notes/horn1.ily"
\include "notes/horn2.ily"
\include "notes/trumpet1.ily"
\include "notes/trumpet2.ily"
\include "notes/trombone1.ily"
\include "notes/trombone2.ily"
\include "notes/tuba.ily"

\include "notes/timpani.ily"
\include "notes/vibraphone.ily"
\include "notes/percussion.ily"
\include "notes/harp.ily"


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
			\keepWithTag #'score \bassoonNotes 
		}
	>>
	\new StaffGroup = "StaffGroup_brass" <<
		\new Staff = "Staff_horn1" {
			\set Staff.instrumentName = "Horn 1 in F"
			\set Staff.shortInstrumentName = "Hn."
			\keepWithTag #'score \hornOneNotes
		}
		\new Staff = "Staff_horn2" {
			\set Staff.instrumentName = "Horn 2 in F"
			\set Staff.shortInstrumentName = "Hn."
			\keepWithTag #'score \hornTwoNotes
		}
		\new Staff = "Staff_trumpet1" {
			\set Staff.instrumentName = 
			\markup { \concat { "Trumpet 1 in B" \flat }}
			\set Staff.shortInstrumentName = #"Tpt."
			\keepWithTag #'score \trumpetOneNotes
		}
		\new Staff = "Staff_trumpet2" {
			\set Staff.instrumentName = 
			\markup { \concat { "Trumpet 2 in B" \flat }}
			\set Staff.shortInstrumentName = #"Tpt."
			\keepWithTag #'score \trumpetTwoNotes
		}
		\new Staff = "Staff_trombone1" {
			\set Staff.instrumentName = "Trombone 1"
			\set Staff.shortInstrumentName = #"Tbn."
			\removeWithTag #'part \tromboneOneNotes
		}
		\new Staff = "Staff_trombone2" {
			\set Staff.instrumentName = "Trombone 2"
			\set Staff.shortInstrumentName = #"Tbn."
			\removeWithTag #'part \tromboneTwoNotes
		}
		\new Staff = "Staff_tuba" {
			\set Staff.instrumentName = "Tuba"
			\set Staff.shortInstrumentName = #"Tba."
			\removeWithTag #'part \tubaNotes
		}
	>>
	\new Staff = "Staff_timpani" {
		\set Staff.instrumentName = "Timpani"
		\set Staff.shortInstrumentName = "Timp."
		\timpaniNotes
	}
	\new Staff = "Staff_vibraphone" {
		\set Staff.instrumentName = "Vibraphone"
		\set Staff.shortInstrumentName = "Vib."
		\removeWithTag #'part \vibraphoneNotes
	}
	\new Staff = "Staff_percussion" \with { \accepts "DrumVoice" } {
		\set Staff.instrumentName = "Percussion"
		\set Staff.shortInstrumentName = "Perc."
		\removeWithTag #'part \percussionNotes
	}
	\new PianoStaff \relative c'' { 
		\set PianoStaff.instrumentName = "Harp"
		\set PianoStaff.shortInstrumentName = "Hp."
		<<
			\new Staff {
				\removeWithTag #'part \harpUpNotes
			}
			\new Staff {
				\removeWithTag #'part \harpDownNotes
		  	}			
		>>
	}	
>>
