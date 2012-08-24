\version "2.15.43"
\include "english.ly"

\layout { ragged-right = ##f }

% calculate x-alignment based on attribute text + dynamic text
% this has to be a markup-command to get stencil-extent based on (interpret-markup layout props ...)
#(define-markup-command (center-dyn layout props atr-text dyn)(markup? string?)
  "x-align on center of dynamic"
  (let* (
          (text (string-append " " atr-text))
          (atr-stencil (interpret-markup layout props (markup #:normal-text #:tiny #:italic text)))
          (dyn-stencil (interpret-markup layout props (markup #:dynamic dyn)))
          (atr-x-ext (ly:stencil-extent atr-stencil X))
          (dyn-x-ext (ly:stencil-extent dyn-stencil X))
          (atr-x (- (cdr atr-x-ext)(car atr-x-ext)))
          (dyn-x (- (cdr dyn-x-ext)(car dyn-x-ext)))
          (x-align
            (* (-
                 (/ (+ atr-x (/ dyn-x 2)) (+ atr-x dyn-x) )
                 0.5) -2)
          )
        )
        (interpret-markup layout props (markup #:halign x-align #:concat (#:dynamic dyn #:normal-text #:tiny #:italic text)))
))
% define a 'new' attributed dynamic script
#(define (make-atr-dynamic-script atr dyn)
        (let ((dynamic (make-dynamic-script (markup #:center-dyn atr dyn))))
             (ly:music-set-property! dynamic 'tweaks (acons 'X-offset 0 (ly:music-property dynamic 'tweaks)))
             dynamic))

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
	
	R2.*5
	a,2.\< |
	d2.\mf\> |
	a2 d8\subp( e) |
	
	fs4.( e8) d4 |
	e( cs2) |
	<< d2.~ {s2 s4\> } >> |
	d4 r\! r |
	
	R2.*2

	r2 d8\f( e) |
	f4.( e8) d4-- |
	e( c2) |
	d4.\mf\>( cs?8) b4-- | 
	cs( fs,?2) |
	
	R4*9\!
	r4 d''8\mp( cs b a) |
	g2.~ |
	g2.\> |

	R2.*3\!
		
	\bar "|."
		
}