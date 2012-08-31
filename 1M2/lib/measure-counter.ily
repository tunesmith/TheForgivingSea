\version "2.16.00"

% From https://code.google.com/p/lilypond/issues/detail?id=2445

#(define my-grob-descriptions '())

#(define my-event-classes (ly:make-context-mod))

defineEventClass =
#(define-void-function (parser location class parent)
   (symbol? symbol?)
   (ly:add-context-mod
   my-event-classes
   `(apply
     ,(lambda (context class parent)
      (ly:context-set-property!
       context
       'EventClasses
       (event-class-cons
        class
        parent
        (ly:context-property context 'EventClasses '()))))
     ,class ,parent)))

\defineEventClass #'measure-counter-event #'span-event

#(define (add-grob-definition grob-name grob-entry)
   (let* ((meta-entry   (assoc-get 'meta grob-entry))
          (class        (assoc-get 'class meta-entry))
          (ifaces-entry (assoc-get 'interfaces meta-entry)))
     (set-object-property! grob-name 'translation-type? list?)
     (set-object-property! grob-name 'is-grob? #t)
     (set! ifaces-entry (append (case class
                                  ((Item) '(item-interface))
                                  ((Spanner) '(spanner-interface))
                                  ((Paper_column) '((item-interface
                                                     paper-column-interface)))
                                  ((System) '((system-interface
                                               spanner-interface)))
                                  (else '(unknown-interface)))
                                ifaces-entry))
     (set! ifaces-entry (uniq-list (sort ifaces-entry symbol<?)))
     (set! ifaces-entry (cons 'grob-interface ifaces-entry))
     (set! meta-entry (assoc-set! meta-entry 'name grob-name))
     (set! meta-entry (assoc-set! meta-entry 'interfaces
                                  ifaces-entry))
     (set! grob-entry (assoc-set! grob-entry 'meta meta-entry))
     (set! my-grob-descriptions
           (cons (cons grob-name grob-entry)
                 my-grob-descriptions))))

#(define (measure-counter-stencil grob)
  (let* ((elts (ly:grob-object grob 'elements))
         (refp (ly:grob-common-refpoint-of-array grob elts X))
         (col-L (ly:spanner-bound grob LEFT))
         (col-R (ly:spanner-bound grob RIGHT))
         (left-self-ext (ly:grob-extent col-L col-L X))
         (left-ext (ly:grob-extent col-L refp X))
         (right-ext (ly:grob-extent col-R refp X))
         (counter (ly:grob-property grob 'counter))
         (num (grob-interpret-markup grob (markup (number->string counter)))))

    (set! num (ly:stencil-aligned-to num X CENTER))
    (set! num (ly:stencil-translate-axis num (cdr left-self-ext) X))
    (set! num (ly:stencil-translate-axis num (* 0.5 (- (car right-ext) (cdr left-ext))) X))

    num))

#(add-grob-definition
  'MeasureCounter
  `(
    (counter . 1)
    (direction . ,UP)
    (outside-staff-priority . 350) ; what should this be?
    (stencil . ,measure-counter-stencil)
    (meta . ((class . Spanner)
             (interfaces . (text-interface
                            text-script-interface
                            font-interface))))))

#(define (define-grob-property symbol type? description)
  (if (not (equal? (object-property symbol 'backend-doc) #f))
      (ly:error (_ "symbol ~S redefined") symbol))

  (set-object-property! symbol 'backend-type? type?)
  (set-object-property! symbol 'backend-doc description)
  symbol)

#(map
  (lambda (x)
    (apply define-grob-property x))
    `(
      (counter ,integer? "initial number of a measure count")
    ))

#(define measure-counter-types
   '(
     (MeasureCounterEvent
      . ((description . "Used to signal the start and end of a measure counter.")
         (types . (general-music measure-counter-event span-event event))
         ))
     ))

#(set!
  measure-counter-types
  (map (lambda (x)
         (set-object-property! (car x)
                               'music-description
                               (cdr (assq 'description (cdr x))))
         (let ((lst (cdr x)))
           (set! lst (assoc-set! lst 'name (car x)))
           (set! lst (assq-remove! lst 'description))
           (hashq-set! music-name-to-property-table (car x) lst)
           (cons (car x) lst)))
       measure-counter-types))

#(set! music-descriptions
       (append measure-counter-types music-descriptions))

#(set! music-descriptions
       (sort music-descriptions alist<?))

measureCounterEngraver =
#(lambda (context)
  (let ((span '())
        (go? #f)
        (stop? #f)
        (last-measure-seen 0)
        (new-measure? #f)
        (increment 0))
        
    (make-engraver
      (listeners ((measure-counter-event engraver event)
	(set! last-measure-seen (ly:context-property context 'currentBarNumber))
	(set! new-measure? #t)
	(if (= START (ly:event-property event 'span-direction))
	    (set! go? #t)
	    (begin
	      (set! stop? #t)
	      (set! go? #f)))))

      ((process-music trans)
        (let ((col (ly:context-property context 'currentCommandColumn))
              (now (ly:context-property context 'measurePosition))
              (current-bar (ly:context-property context 'currentBarNumber)))
          ; if spanner has been started, make sure we're in a new bar before adding to it
          (if (and (ly:grob? span) (> current-bar last-measure-seen))
              (set! new-measure? #t))
          (if new-measure?
              (begin
                (if (moment<=? now ZERO-MOMENT) ; first column of measure
                    (begin
                      ; add a right bound to the current spanner
                      (if (ly:grob? span)
                          (begin
                            (ly:spanner-set-bound! span RIGHT col)
                            (ly:pointer-group-interface::add-grob span 'elements col)
                            (ly:engraver-announce-end-grob trans span col)
                            (set! span '())))
                      (if stop?
                          (begin
                            (set! increment 0)
                            (set! stop? #f)))
                      (if go?
                          (let* ((x (ly:engraver-make-grob trans 'MeasureCounter col))
                                 (counter (ly:grob-property x 'counter)))
                            (ly:spanner-set-bound! x LEFT col)
                            (ly:pointer-group-interface::add-grob x 'elements col)
                            (set! (ly:grob-property x 'counter) (+ counter increment))
                            (set! span x)
                            (set! increment (1+ increment))))
              (set! new-measure? #f)))))
              
          (set! last-measure-seen current-bar))))))

measureCounterStart =
#(make-span-event 'MeasureCounterEvent START)

measureCounterEnd =
#(make-span-event 'MeasureCounterEvent STOP)
