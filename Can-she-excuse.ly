\version "2.24.4"

\header {
  title = "Can she excuse my wrongs"
  subtitle = "First Booke of Songes, 1597, 1613"
  subsubtitle = "Piano part loosely based on lute tablature"
  composer = "John Dowland"
}

global = {
  \key d \dorian
  \numericTimeSignature
  \time 3/2
  \language  "english"
  \tempo 2=80
  \override Score.Footnote.annotation-line = ##f
}

\paper {
  top-margin = 10\mm
  bottom-margin = 10\mm
  left-margin = 15\mm
  right-margin = 15\mm}

Voice = \relative c' { \global
  \repeat volta 2 {
    d2 a' d c2. b4 a2 a2 g f e1. \break 
    c'2 a4 bf2 g4 a1 f2 g e e d1.}\break
  \repeat volta 2 {
  a'2 a a a a4 a2 b4 c1 bf2 a1 r2 \break
  c2 a4 bf2 g4 a1 bf2 a d d cs1.  }
  \repeat volta 2 {a4. a8 a4 a2 a4 a2 a4 a2. b4. b8 b4 b2 b4 b2 b4 b2 b4
  a2 a4 a a a a2 a a4 g fs4. g8 a4 b4 g4 a4 fs1 d2\fermata  }
}

verse = \lyricmode {
  Can she ex -- cuse my wrongs with vir -- tues cloak?
  Shall I call her good when she proves un -- kind?
  No, no, where sha -- dows do for bo -- dies stand,
  thou may'st be a -- bus'd if thy sight be dim.
  Wilt thou be thus a -- bu -- sed still,
  see -- ing that she will right thee ne -- ver
  if thou canst not o'er -- come her will,
  thy love will be thus fruit -- less e -- ver. }

verse_rpt=\lyricmode{
  Are those clear fires which va -- nish in -- to smoke?
  Must I praise the leaves where no fruit I find?
  Cold love is like to words writ -- ten on sand,
  or to bub -- bles which on the wa -- ter swim.}

right = \relative c' {
  \global
  <<
  % alto
  \relative d'{ f2 f4 e f4 g4 a2. 
     \footnote #'( 0 . 3.5) \markup{ " Lute part has B"\flat" in 1597 version, amended to G in 1613 edition"  } % "Lute part has B flat \markup{\flat} U+266D in 1597 version, amended to G in 1613 edition" 
                 g4 f2 c'2 c a a1. 
  a4. g8 f4 g4. f8 e4  f2. e4 d2 d d cs d1. 
  cs4. d8 e2 d4 cs d2 e4 f2 d4 e f g a g f e1.
  a4. g8 f4 g4. f8 e4 f2. a4 g4 d cs4 f2 d4 f4 g a1.
  a,4. b8 c4 d2 c4 f2 e4 d2 c4 b4. c8 d4 e2 d4 g2 f4 e2 d4 
  cs4. d8 e2 f4 g4 e4. g8 f4 d4 cs4  e4  d2. d2 cs4 d1 d2
  
  }
  \\% tenor
  \relative b {a2 a1 <f' c>2. s4   c2 <f a,>2 <e c>2 <d a>2 <e cs>1.
               <e a,>2 a,4 <d bf>2 s4 a2. s2. <bf g>2 s2 s2 a1.
               s1. a2 a4 a2. c1 <d bf>2 <cs a>1.
               <e a,>2 a,4 <d g,>2 s4 c1 <e bf>2 s1. <e cs>1.
               s1. s1. s1. s1. s1. cs2 s1 a2. b2. a1 a2 
  }
  >>
  

}

left = \relative c {
  \global
  d2 d2. e4 f1. f2 c d a1. | a2 d4 g,2 c4 f,1 bf2 g2 a1 d1. |
  a'2. g4 f4 e d2 cs4 d2. c!2. f,4 g2 a1. |
  a2 d4 g,2 c4 f,1 g2 a2 bf1 a1. |
  f'1 f2 f1 f2 g1 g2 g1 g2 a2. a,2. a1 a2 d4. e8 fs4 g4 e2 d2. d2.
}

VoicePart = \new Staff \with {
  instrumentName = "Voice"
  midiInstrument = "voice oohs"
} { \Voice }
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

\score {  \transpose d d {
  <<
    \VoicePart
    \pianoPart
          >>          
          }
          
  \layout { % line-width=#185 }
  }
  \midi { }
  
}

\markup { 
\column {
\line { "Was I so base that I might not aspire"}
\line{"Unto those high joyes which she holds from me?"}
\line{"As they are high, so high is my desire,"}
\line{"If she this deny what can granted be?"}
\line{"If she will yield to that which reason is,"}
\line{"It is reasons will that love should be so just,"}
\line{"Dear make me happy still by granting this,"}
\line{"Or cut off delays if that die I must."}
\line{"Better a thousand times to die"}
\line{"Than for to live thus still tormented,"}
\line{"Dear but remember it was I"}
\line{"Who for thy sake did die contented." }
  }
}
