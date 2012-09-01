This is a lilypond rendering of a film cue I did for a film scoring class.
A live orchestra read from this score, so I got comments from the score and
parts and incorporated them into this notation.

Unexpectedly hard parts of creating this score (all specific to v2.16):

- General spacing and staff sizes.  I believe Lilypond by default puts everything 
	too close together for music that is read by instrumentalists, particularly
	sight-readers.  The spacing commands are easy to use, but difficult to find
	and look up if you don't already know them.
	
- I make liberal use of "tagging" for part extraction.  It appears this is the best
	way to handle minor differences between parts and full scores.
	
- Hairpins are surprisingly difficult.  Most instruments do not have a natural
	decay, so hairpins don't necessarily start or end right at the note
	boundaries.  It's necessary to use "fake voices" in these cases.  Even
	with this, it didn't support having a decrescendo end at the Fine bar - 
	I had to make it end at a note value before the Fine bar.  And
	if you have ties over these fake voices, you have to know about
	\set tieWaitForNote = ##t
	
- Header text elements are a bit bearish to configure.  Our instructions were to
	put the instrument name in the "upper left" of each part; I ended up using
	the out of the box "poet" slot, and then later reconfigured all of 
	bookTitleMarkup to reposition "instrument" when it became clear I'd need 
	the "instrument" slot for later pages.  It also could be easier to put a 
	simple newline in, for longer instrument names.
	
- The alignment of the flat sign in text markup like "Clarinet in Bb" is difficult.
	I gave up on this one because the approach to make it look right felt too
	hard-coded.
	
- The "\sustainOff" right-alignment looks bad to me.  It should end at the barline
	or at the rest you stop pedaling; not right afterward.  Pedaling usually implies
	you pedal for the duration of the note, but not longer.
	
- It was difficult to figure out how to create a percussion staff where someone
	switched from a pitched instrument to a rhythm instrument.  Also, I'm not 
	quite convinced on the choice for a percussive half note- I've seen open-heads
	in these situations before, but I found it impossible to override the notehead
	in \drummode.
	
- It was extremely hard to specify a subito dynamic right after a hairpin.  This
	is a relatively common use-case, but I had to pull in a pretty complicated
	scheme function, and modify it, to make it work as expected.  This one requirement
	probably took around six hours.

- Making courtesy/cautionary accidentals show up in just the parts was a more 
	verbose process than it needed to be, it seemed.  I wasn't able to do this
	reliably unless I tagged the entire measure.  The programmer in me wanted
	to just tag the cautionary accidental alone.
	
- Fermatas were often misaligned, too close to or colliding with slurs.  Manual
	padding was necessary.
	
- In film scoring, it's common to include the information of the SMPTE timecode
	of when a last note in a cue gets cut off, for the instruments that are 
	playing at that time.  It was not possible to make a \markup element 
	right-align with the final barline.  This eventually required a few 
	overrides to Score.RehearsalMark - not too bad, but it felt a bit 
	hackish.
	
- Specifying an arbitrary bar number (like after a long multi-rest) is not
	supported out of the box, but I found a lovely, concise snippet to 
	help with this at http://lsr.dsi.unimi.it/LSR/Item?id=431
	
- Eyeglasses are sometimes used in the bottom right of a page to remind an
	instrumentalist that there really is another page.  I had to override
	rehearsal mark in a few ways to get this to work.
	
- One interesting semi-bug is that top-markup-spacing doesn't seem to apply
	to 2nd pages (and later pages) of scores, even if they have the instrument
	name at the top of the page.  When I got to two-page parts, I had to 
	rejigger my formatting to use a larger top-margin, introduce 
	top-system-spacing, and reduce top-markup-spacing.

- It would be nice if, in a PianoStaff, you could invoke "sustainOn" in the
	upper staff (for instance if you're in a melody-only section) but still
	easily have the pedal markings show below the lower staff.
	
- Figuring out large bar numbers was difficult, and it actually required some
	alpha code that is included in an issue in the lilypond issue tracker.
	The mailing list was *great* at pointing this out, thanks Nick!
	
- Giant time signatures are actually somewhat common for film scores, but
	difficult to create in any notation system.  Best option I came up 
	with was to jack up the font size and assign them to staff groups.

General notes:

- For film scoring, it's best to be liberal with the cautionary accidentals.  I 
	felt I was, but even then, upon receiving the parts, I discovered the 
	musicians had scrawled in several more accidentals.  (One even praised
	me with a smiley face for including a certain natural sign.)
	
- I chose the approach of inputting all notes in "concert language", except for 
	double bass.  It's apparently a common convention in film scoring to have 
	the full score be a "C Score".  This enabled me to just invoke transpose 
	for each of the parts.
	
- In all of the note entry for this score, there was only one serious collision!
	I had to increase the value of "accidental-collision" for a slur in the 
	harp part.

- There is a nice snippet at http://lsr.dsi.unimi.it/LSR/Item?id=838 that lets
	you specify number of bars per page, which is a common requirement for 
	orchestral scores.
	
- I didn't even try to make midi work with this score - that will probably 
	require a different set of revisions.
	
	