\version "2.24.0"
\include "english.ly"

\paper {
	#(set-paper-size "letter")
	top-margin = 14\mm
	ragged-last-bottom = ##f
	indent = 1\cm
	system-system-spacing.basic-distance = #16
	markup-system-spacing.basic-distance = #18
	top-markup-spacing.basic-distance = #2
	last-bottom-spacing.basic-distance = #10
	top-system-spacing.basic-distance = #14
	left-margin = 20\mm
	right-margin = 16\mm
	check-consistency = ##t	
	bookTitleMarkup = \markup {                                                       
		\override #'(baseline-skip . 3.5)
  		\column {
			\fill-line { \fromproperty #'header:dedication }
			\override #'(baseline-skip . 3.5)
    		\column {
    			\fill-line {
    				\huge \larger \larger \bold
    				\fromproperty #'header:title
    			}
    			\fill-line {
    				\large \bold
    				\fromproperty #'header:subtitle
    			}
		    	\fill-line {                                                              
			        \smaller \bold
			        \fromproperty #'header:subsubtitle
		        }
		        \fill-line {
		        	{ \larger \larger \fromproperty #'header:instrument }
		        	\fromproperty #'header:composer
		        }
		        \fill-line {
		        	\fromproperty #'header:meter
		        	\fromproperty #'header:arranger
		        }
			}                                                                           
		}                                                                             
	} 
}

\header {
	title = \markup \normal-text \larger "The Forgiving Sea 1M2"
  	composer = \markup "Curt Siffert"
  	copyright = ""
  	tagline = ""
}

everyPartScore = {
	\tempo 4 = 116
	\set Score.skipBars = ##t
}

#(set-global-staff-size 24)	
\layout{	
	\context { 
		\Score
  		\override MetronomeMark.extra-offset = #'(-1.5 . 0)
    	\override MetronomeMark.padding = #'2.5
    	\override MetronomeMark.font-size = \smaller
	}
	\context {
		\Staff
		\override MultiMeasureRest.expand-limit = #1
	}
}	
