\version "2.24.4"

\header {
  title = "Come away, come sweet love"
  subtitle = "First Booke of Songes, 1597, 1613"
  subsubtitle = "Piano part loosely based on SATB parts"
  composer = "John Dowland"
  tagline = "Music engraving by LilyPond 2.24.4—www.lilypond.org            Paul Matthews, February 2026"
}

global = {
  \key g \dorian
  \numericTimeSignature
  \time 4/2
  \language  "english"
  \tempo 2=55
  \override Score.Footnote.annotation-line = ##f
}

\paper {
 top-margin = 10\mm
  bottom-margin = 10\mm
  left-margin = 15\mm
  right-margin = 15\mm}

Voice = \relative c'' { \global
      \repeat volta 2 {
        d4 c4 c2 c4 bf a2 a4 bf c d2 cs4 d2 } \break
       \repeat volta 2 {
          d4. e8 f4 d c bf a2 
          \time 6/4
          g4. a16 ( bf c4) a4. (bf16 c d4 ) bf c c d2 d4 
          c4. bf8 (a g) fs2 g4 bf a2 g2.
 
     }
}

verse = \lyricmode {
  Come a -- way, come sweet love, the gol -- den mor -- ning breaks
  Teach thine arms then to em -- brace,
  and sweet ro -- sy lips to kiss, 
  and mix our souls in mu -- tual bliss.
}
verserpt = \lyricmode {
  All the earth, all the air, of love and plea -- sure speaks.
  Eyes were made for beau -- ties grace, 
  view -- ing ru -- ing loves long pains, 
  pro -- cured by beau -- ties rude dis -- dain.
}
  
  

right = \relative c' {
  \global
  <<
  \relative g'{ % alto 
    
    g4 g a2 a4 g fs2 (fs4) g4 a a a4. g8 fs2
    bf8 c d4. c8 bf4 a g fs2 
    g2 g4 f4.g16 a16 bf4 (bf8) a16 g a8 bf4 a8 bf2 
    f4 f2 d4 d2 d4 g2 fs4 g2.
    
 
  }
  \\ 
  \relative g { % tenor
    b4 c c2 f4 d d2 d2 d4 f e4. e8 d2
    f4 f bf f f d d2 
    bf4. c16 d ef4 c2 f4 d4 f2 f2 bf,4 a4. d8 c bf a2 bf8 c d4 d4. c8 b2.
    
  }
  >>
}

left = \relative g {  %  Bass line
  \global
  g4 e f2 f4 g d2 d4 g f e8 d8 a'4 a,4 d2 
  bf4. c8 d4. e8 f4 g d2 
  ef4. d8 c4 f4. ef8 d4 
  g4 f2 bf,2 bf4 f'2 g4 d4. c8 bf a g4 d' d g,2.
}

VoicePart = \new Staff \with {
  instrumentName = "Voice"
  midiInstrument = "voice oohs"
} { \Voice }
\addlyrics { \verse }
\addlyrics { \verserpt }


pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
} <<
  \new Staff = "right" \with {
    midiInstrument = "lute"
  } \right
  \new Staff = "left" \with {
    midiInstrument = "lute"
  } { \clef bass \left }
>>

\score { \transpose d d {
  <<
    \VoicePart
    \pianoPart
          >>          
         }
          
  \layout {  }  
  \midi { }
  
}

\markup { 
\column {
\line {"Come away, come sweet love,"}
\line{"The golden morning wastes,"}
\line{"While the sun from his sphere,"}
\line{"His fiery arrows casts."}
\line{"Making all the shadows fly"}
\line{"Playing, staying in the grove,"}
\line{"To entertain the stealth of love."}
\line{"Thither sweet love let us hie, "}
\line{"Flying, dying in desire, "}
\line{"Winged with sweet hopes and heav'nly fire.  "}

  }
}
