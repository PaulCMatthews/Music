\version "2.24.4"

\header {
  title = "My thoughts are wing'd with hopes"
  subtitle = "First Booke of Songes, 1597, 1613"
  subsubtitle = "Piano part loosely based on SATB parts"
  composer = "John Dowland"
  tagline = "Music engraving by LilyPond 2.24.4—www.lilypond.org            Paul Matthews, February 2026"
}

global = {
  \key c \minor
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

Voice = \relative c'' { \global
    ef2 d c b2. c4 d2 ef c2. c4 b1 r2 
    g'2 f2 ef2 d1 bf4 ef4 (ef4) d2 c b4 c1. 
    bf2 c bf g2. af4 bf2 ef ef d ef1 r2 
    c2 d2 ef2 f2. f4 ef2 d c2. d4 b1 r2 
    \repeat volta 2 {
    g'2 g2 f2 ef c4 ef2 d4 ef2. d4 ( c2) b1 r2 
    r4 f'4 d4 bf ef c d1 c2 b2. c4 ( b2) c1. 
     }
}

verse = \lyricmode {
  My thoughts are wing'd with hopes, my hopes with love,
  Mount love un -- to the Moon in clear -- est night,
  And say as she doth in the hea -- vens move, 
  In earth so wanes and wax -- eth my de -- light:
  And whis -- per this but soft -- ly in her eares,
  Hope oft doth hang the head, and trust shed teares. }
  
  

right = \relative c' {
  \global
  <<
  \relative g'{ % alto 
    
    g2 g2 g2 g2 r4 c4 bf2 g2 g2 f2 g1.
    bf2 bf1   f4 bf bf2. g4 (g4) f4 g2 g4. f8 e1.
     bf'2 af2 f2 ef4. f8 g2. af4 bf2 c2 bf4 af g1.
    af4. g8 f4 bf2 g4 af4. bf8 c2.   g4 g1 f2 g1.
    bf2 bf bf c4 c2 c4 bf4 s4    | g4 af4. g8 g2 f4 g1.
    bf2 bf r4 a4 bf2 f4 g2 f4 g4. g8 g4 g4 g4. f8 e1. 
  }
  \\ 
  \relative g { % tenor
    c2 d ef d g g ef4 c2 ef4 d c d1.
    ef2 f4 af4 g2  s4 g4 f2 ef2 bf2. ef4 d2 c1.
    d4 g4 f4 ef2 d4 s2 ef1 g2 f2. f4 ef1. 
    ef4 f4 s4 g2 ef4 f2 af2.  c,4 d2 ef2 d4 c d1.
    ef2 ef d g2 af4  g4 (g8) af8 bf af8 | ef4 c2 d4 ef4 c4 d1
    c2 d4. ef8 f4 g2 f4 r4 f4 d bf ef c d2. ef4 d2 c1.
  }
  >>
  
}

left = \relative g {  %  Bass line
  \global
  c,2 b2 c2 g'2. af4 bf2 c2  af2. af4 g1. |
  ef2 d ef bf'2. af4 g2  d2 ef4 c4 g'2 c,1. |
  g'2 af bf ef,2. f4 g2  (g4) f8 ef8 af4 f bf2 ef,1. |
   af2  bf2 c2 f,1 c'2 bf2  af2. af4  g1. |
  ef2 ef2 bf2 c2 f4 c4 g'2 c2. bf4 af2 g2. f4 ef2 |
  d2 bf4 ef4 c4 f4 bf,2. g'4 ef af g1 g2 c,1.
}

VoicePart = \new Staff \with {
  instrumentName = "Voice"
  midiInstrument = "voice oohs"
} { \Voice }
\addlyrics { \verse }

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
\line {"And you my thoughts that some mistrust do carry,"}
\line{"If for mistrust my mistress do you blame"}
\line{"Say though you alter, yet you do not vary,"}
\line{"As she doth change, and yet reman the same:"}
\line{"Distrust doth enter hearts, but not infect"}
\line{"And love is sweetest seasoned with suspect."}
\line{"   "}
\line{"If she, for this, with clouds do make her eyes,"}
\line{"And make the heavens dark with her disdain,"}
\line{"With windy sighs disperse them in the skies,"}
\line{"Or with thy tears dissolve them into rain,"}
\line{"Thoughts, hopes and love return to me no more"}
\line{"Till Cynthia shine as she hath done before."}

  }
}
