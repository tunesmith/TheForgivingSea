\version "2.24.0"
\include "english.ly"

\include "lib/bars-per-line.ily"

#(set-global-staff-size 14)
\paper {
	#(set-paper-size "legal")
	top-margin = 14\mm
	last-bottom-spacing.basic-distance = #6
	left-margin = 12\mm
	right-margin = 14\mm
	markup-system-spacing.basic-distance = #12
	indent = 3.0\cm  % space for instrumentName
	short-indent = 1.5\cm  % space for shortInstrumentName
}

\layout {
	\context {
		\Global
	}
	\context{
		\RhythmicStaff
		\consists Measure_counter_engraver
		\remove "Time_signature_engraver"
		\remove "Clef_engraver"
		\override BarLine.transparent = ##t
		\override StaffSymbol.line-count = #0
	}
	\context {
		\Score
	    \consists #(bars-per-line-engraver '(4))
  		\override MetronomeMark.extra-offset = #'(-1.5 . 0)
    	\override MetronomeMark.padding = #'2.5
	}	
	\context {
		\Staff
		\remove Time_signature_engraver
	}
}
    
\header {
	title = \markup \normal-text \larger "The Forgiving Sea 1M2"
  	composer = \markup "Curt Siffert"
  	copyright = ""
  	tagline = ""
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
\include "notes/piano.ily"

\include "notes/violin1.ily"
\include "notes/violin2.ily"
\include "notes/viola.ily"
\include "notes/cello.ily"
\include "notes/doublebass.ily"

<<
	\new StaffGroup = "StaffGroup_woodwinds" \with {
		\consists Time_signature_engraver
		\override TimeSignature.font-size = #20
		\override TimeSignature.font-name = "Futura Condensed"
    	\override TimeSignature.extra-offset = #'(0 . -24.5)
	}
	<<
		\new Staff = "Staff_flute1" {
			\set Staff.instrumentName = #"Flute 1"
			\set Staff.shortInstrumentName = #"Fl."
			% midiInstrument may be set here as well
			\tempo 4 = 116
			\keepWithTag #'score \fluteOneNotes		
		}
		\new Staff = "Staff_flute2" {
			\set Staff.instrumentName = #"Flute 2"
			\set Staff.shortInstrumentName = #"Fl."
			\removeWithTag #'part \fluteTwoNotes
		}
		\new Staff = "Staff_oboe1" {
			\set Staff.instrumentName = #"Oboe 1"
			\set Staff.shortInstrumentName = #"Ob."
			\removeWithTag #'part \oboeOneNotes
		}
		\new Staff = "Staff_oboe2" {
			\set Staff.instrumentName = #"Oboe 2"
			\set Staff.shortInstrumentName = #"Ob."
			\keepWithTag #'score \oboeTwoNotes
		}
		\new Staff = "Staff_clarinet1" {
			\set Staff.instrumentName = 
			\markup { \concat { "Clarinet 1 in B" \flat }}
			\set Staff.shortInstrumentName = #"Cl."
			\keepWithTag #'score \clarinetOneNotes
		}
		\new Staff = "Staff_clarinet2" {
			\set Staff.instrumentName = 
			\markup { \concat { "Clarinet 2 in B" \flat }}
			\set Staff.shortInstrumentName = #"Cl."
			\keepWithTag #'score \clarinetTwoNotes
		}
		\new Staff = "Staff_bassoon" {
			\set Staff.instrumentName = #"Bassoon"
			\set Staff.shortInstrumentName = #"Bsn."
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
	\new PianoStaff \relative c'' { 
		\set PianoStaff.instrumentName = "Piano"
		\set PianoStaff.shortInstrumentName = "Pno."
		<<
			\new Staff {
				\removeWithTag #'part \pianoUpNotes
			}
			\new Staff {
				\removeWithTag #'part \pianoDownNotes
		  	}			
		>>
	}	
	\new RhythmicStaff = "MeasureNumbers" {
			\override Staff.MeasureCounter.font-encoding = #'fetaText
		    \override Staff.MeasureCounter.font-size = #+4
		    \startMeasureCount
    		s2.*42
    		\stopMeasureCount
	}
	\new StaffGroup = "StaffGroup_strings" \with {
		\consists Time_signature_engraver
		\override TimeSignature.font-size = #20
		\override TimeSignature.font-name = "Futura Condensed"
    	\override TimeSignature.extra-offset = #'(0 . -236)
	}
	<<
		\new Staff = "Staff_violin1" \with { \consists "Metronome_mark_engraver" } {
			\set Staff.instrumentName = "Violin I"
			\set Staff.shortInstrumentName = #"Vln. I"	
			\tempo 4 = 116		
			\keepWithTag #'score \violinOneNotes
		}
		\new Staff = "Staff_violin2" {
			\set Staff.instrumentName = "Violin II"
			\set Staff.shortInstrumentName = #"Vln. II"
			\removeWithTag #'part \violinTwoNotes
		}
		\new Staff = "Staff_viola" {
			\set Staff.instrumentName = "Viola"
			\set Staff.shortInstrumentName = #"Vla."
			\removeWithTag #'part \violaNotes
		}
		\new Staff = "Staff_cello" {
			\set Staff.instrumentName = "Violoncello"
			\set Staff.shortInstrumentName = #"Vc."
			\removeWithTag #'part \celloNotes
		}
		\new Staff = "Staff_doublebass" {
			\set Staff.instrumentName = "Double Bass"
			\set Staff.shortInstrumentName = #"Db."
			\removeWithTag #'part \doubleBassNotes
		}
	>>
>>
