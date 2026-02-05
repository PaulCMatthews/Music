\version "2.24.4"

\header {
  title = "If my complaints"
  subtitle = "First Booke of Songes, 1597"
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

  \dynamicUp
  
}

verse = \lyricmode {
  % Lyrics follow here.
  If my com -- plaints could pass -- i -- ons move, 
  or make love see where -- in I su -- ffer wrong:
  O love I live and _ dye in thee
  thy griefe in my deepe sighs still speakes, 
  yet thou doest hope when I de -- spaire,
  and when I hope  thou makst me hope in vaine. 
  
}
versen=\lyricmode{
  my pass -- ions were e -- nough to _ prove,
  that my de -- spayres had go -- vernd  me too long,
  thy wounds do fresh -- ly _  bleed in mee
  my hart for thy un -- kind -- ness breaks, 
  thou saist thou canst my harmes re -- paire,
  yet for re -- dresse thou letst me still com -- plaine.
  
}
right = \relative c' {
  \global
  % Music follows here.
  <bf d>2 g c <g d' > bf ef d4 g f d <g, bf> c <a d>2 <a d>2. g4
  <g c ef>2 c <fs, a> <g bf d> <bf d g > <a f'> <g c>2. <<{a2 c4}{ g4 fs2}>> <b d g>1.
  <a f'>2 d4 bf' ef, a  <<{bf,4. c8} {d2} {bf'2}>> d,4 <f a> <ef g> d <<{c4 bf4 c1}{ef2. d8 ef f4 ef}>> <bf d>2 f <bf d>2  
  g4 d' <c e> g' d fs <g, g'>4 c bf <a f'> <g bf ef> d' <a d>2 <<{g2. g4}{bf4 c8 bf c2}>> <fs, a d>1.
  <bf d f>2 d4 bf' c a   << {bf,1 }\\{d1 }\\{bf'2. a4 }>> < c, ef g>2
  <d fs>2 <ef g>4 bf' a g <d fs a>1.
  << {d4 bf' a2. a4}\\{bf,2 c1} >> <bf d g>1  <<{f'4 d}\\{a2}>> 
  << {bf4 c d2 d2} \\{g,4 a bf2 a4 c}>> <b d g>1.
}

left = \relative c {
  \global
  g1. g1. g2 bf ef d2. c4 b2 c a1 g4. a8 bf4. c8 d2 ef2 d1 g,1.
  d'1 c2 bf1 ef2 g2 f2 f,2  bf1 bf2 bf2 a d g,1.  f'2 ef1 d1.
  R1.*4 bf2 f'2 d2 g4 g,4 bf c d2 ef d d g,1.
}

altoVoicePart = \new Staff \with {
  instrumentName = "Alto"
  midiInstrument = "voice oohs"
} { \altoVoice }
\addlyrics { \verse }
\addlyrics {\versen }

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

\score {  \transpose g e {
  <<
    \altoVoicePart
    \pianoPart
          >> }
  \layout { }
  \midi {   \tempo 2=60 }
  
}
