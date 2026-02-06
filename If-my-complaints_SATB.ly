\version "2.24.4"

\header {
  title = "If my complaints"
  subtitle = "First Booke of Songes, 1597"
  subsubtitle = "Piano part based on ATB voice parts"
  composer = "John Dowland"
  meter = "3/2"
}

global = {
  \key g \minor
  \numericTimeSignature
  \time 3/2
  \language  "english"
  \tempo 2=70
}

altoVoice = \relative c' { \global
  \repeat volta 2 {
  g'2 bf ef d1 c2 bf2. a4 g2 fs1 r2 g2 a c bf2. bf4 a2 g g fs g1.}
  \repeat volta 2 {
  a2 bf c d1 c4 bf bf1 a2 bf1 r2 d2 c a bf1. a2 g2. g4 fs1.}
  \repeat volta 2 {d'2 f ef d1 ef2 d1 c2 d1 r2 d2 c d bf2. bf4 a2 g g fs g1.}
  
}

verse = \lyricmode {
  If my com -- plaints could pass -- i -- ons move, 
  or make love see where -- in I su -- ffer wrong:
  O love I live and _ dye in thee
  thy griefe in my deepe sighs still speakes, 
  yet thou doest hope when I de -- spaire,
  and when I hope  thou makst me hope in vaine. 
  
}
verse_rpt=\lyricmode{
  my pass -- ions were e -- nough to _ prove,
  that my de -- spayres had go -- vernd  me too long,
  thy wounds do fresh -- ly _  bleed in mee
  my hart for thy un -- kind -- ness breaks, 
  thou saist thou canst my harmes re -- paire,
  yet for re -- dresse thou letst me still com -- plaine.
  
}
right = \relative c' {
  \global
  <<
  % alto
  \relative d'{ d2 g g g1. g2 f2 bf,4 c d1. 
  ef2 c a d g f c d2. c4 b1.
  f'2 d ef d4. ef8 f4 f g2 ef f2. ef4 d1.
  r4 d4 e g2 fs4 g2. f4 ef d d1 c2 d1.
  f2. bf2 a4 bf2. a4 g2 f g2. g4 fs1.
  r4 bf4 a2. a4 g2. g4 f d bf c d2. c4 b1.
  }
  \\% tenor
  \relative b {bf2 d c  bf4 g bf2 ef d2 d4 d2 g,4 a1 r4
  g4 g1 fs2 g2 d'2 d2 g,2 a2. a4 g1. 
  f2. bf2 a4 bf4. c8 d4 d ef d c bf c2. c4 bf1. 
  g2 c2 d2 (d4) c4 bf a4 g2 a bf a4 g4 a1.
  bf2 d c bf1 c2 d2 ef1 d1.
  f!2 f2. f4 d1 r4 f,4 g a bf g a2 g1.
  }
  >>
  

}

left = \relative c {
  \global
  g1. g1. g2 bf ef d2. c4 b2 c a1 g4. a8 bf4 c4 d2 ef2 d1 g,1.
  d'1 c2 bf1 ef2 g2 f1  bf,1 r2 bf2 a d g,2 g'2. g4  f2 ef1 d1.
  R1.*4 bf2 f'2 d2 g4 g,4 bf c d2 ef d d g,1.
}

altoVoicePart = \new Staff \with {
  instrumentName = "Alto"
  midiInstrument = "voice oohs"
} { \altoVoice }
\addlyrics { \verse }
\addlyrics { \verse_rpt }

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
} <<
  \new Staff = "right" \with {
    midiInstrument = "harpsichord"
  } \right
  \new Staff = "left" \with {
    midiInstrument = "harpsichord"
  } { \clef bass \left }
>>

\score {  \transpose g g {
  <<
    \altoVoicePart
    \pianoPart
          >> }
  \layout { }
  \midi { }
  
}
