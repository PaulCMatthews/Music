\version "2.24.4"
\language "english"

\header{ title="Silent Worship"
subtitle="G.F. Handel, arranged by Arthur Somervell" }

\score{ 
 

\transpose g d { % transpose everything down a fourth 


<< \new Staff % Voice
  { \tempo 4=45

  \relative { \key g  \major \time 4/4 
     R1*5
     b'8 c16 d16 c8b a d r8
     fs, g c16 ( b16) a8 g g fs r4
     b8 c16 b16 a8 g8 c b r 
     b e, fs16( g16) a8 g fs16( e16) d8 r8 
     d' g, a16( b16) c8 c c b r a 
     fs g16 (a16) b8 a16( g16) g4. r8 
     e8 fs16 g16 a8 g8 fs d'4 
     c8 b a16( g16) fs8. g16 g2
     R1
     b8 c16 d16 e8 d c16 (b16 ) c8 r4
     a8 b16 c16 d8 c8 b16 a16 b4 a8
     g8 a16 b16 c8 b a16( g16) a4 a8 
     b8 e cs8. d16 d4. r8
     b8 c16 d16 c8 b a d r fs, 
     g8 c16 (b16) a8 g8 g fs r4 
     b8 c16 b16 a8 g8 c8 b8 r8
     b8 e,8 fs16 g16 a8 g8 fs16 (e16) d4
     d'8 g,8 a16 b16 c8 c c b r a
     fs g16( a16 ) b8 a8 g4. r8
     e8 fs16 g16 a8 g fs d'4 c16 c 
     b8 a16 g16 fs8. g16 g2
     R1 \fine      
     } 
  }

\addlyrics { Did you not hear my la -- dy Go down the gar -- den sing -- ing?
Black -- bird and thrush were si -- lent To hear the al -- leys ring -- ing
Oh saw you not my la -- dy Out in the gar -- den there?
Sha -- ming the rose and li -- ly For she is twice as fair.
Though I am no -- thing to her, Though she must rare -- ly look at me,
And though I could ne -- ver woo her, I love her till I die.
Sure -- ly you heard my la -- dy Go down the gar -- den sing -- ing, 
Si -- len -- cing all the song birds,
And set -- ting the al -- leys ring -- ing,
But sure -- ly you see my la -- dy, 
Out in the gar -- den there,
Riv' -- ling the glitt' -- ring sun -- shine, 
With a glo -- ry of gol -- den hair. }

% Piano accompaniment.Left hand has just one voice, right hand has two 
\new PianoStaff { % RH
  << \new Staff \relative{\clef treble  \key g  \major \time 4/4 
     << % Intro
       \override Voice.Rest.Y-offset = #0 % for upper voice rests, lower voice use s
       {b'8 c16 d c8 b8 a d b8\rest fs g a16 b c8 a fs16 e d8 b4\rest
       b'8 c16 b a8 g c b4 a8 r g'4 fs8 g d4 c8 b a16 g16 fs8. g16 g4. b8\rest}\\
       {d,4 e8 d fs4 s8 fs e4 e4 d8 a8 s4
       d4 d d e g8 d'8 c4 g8 fs16 e d4 d8 e d4 <d b>4. s8 }
     >>
     << % Did
       {g4 fs8 g8 a4 fs4 g4 a8 g8 g8 fs d' c } \\
       {d,2 d2 b8 c16 d16 e8 c d4 < d a' >}
     >>
     << % Blackbird
       {g4 a8 g fs g b\rest d, e d a' g fs d <g d'>4}\\
       {d4 e8 d8 c b s b g4 e'8 c8 d a d4}
     >>
     << %saw 
       {e4 a16 g fs e a8 g e a fs g~ g fs g fs16 e d8 g }\\
       {b,4 c d2 d8 cs d c b2}
     >>
     << % Shaming
       {e8 d a' g fs fs g a g e d4 g4 g'8 fs16 e }\\
       {g,,4 c8 d16 e d2 d8 a8 a4 b }
     >>
     << %                    Though
       {d'8 c16 b a8. g16 g2 | g4 g g4. g8  a b16 a16 g8 fs g4. d'8 }\\
       {g,8 e   g fs     b,2 |d4 e8 d e4. e8 fs d d c d4. a'8 }
     >> 
     << % though 
       {g4 fs8 g d g fs a b g a g fs fs16 g a8 fs  }\\
       {e8 d c b a cs d4 d8 e cs4 d4. d8 }
     >>
     << % Surely
       {g4 a8 g fs2 | g4  a8 g g fs b8\rest a }\\
       {d,4 d4 d d   | b8 c16 d16 e8 c d4 s8 d }
     >>
     << % Silencing 
       {g4 a8 g fs g b d, | e d a' g fs d <g d'>4 }\\
       {b,4 e8 d c b d g,  | g4 e'8 c d a d4}
     >>
     << % But surely 
       {g4 a16 g fs e a8 g e a fs g g8. fs16 g8 fs16 e d8 g }\\
       {e4 c d e d8 cs d c b4. b8}
     >>
     << % Riv'ling 
       {e8 d a' g fs fs g a b a16 g fs4 g g'8 fs16 e | d8 c16 b a8. g16 g2 \fine }\\
       {g,4 c8 d16 e d4 d4 g8e d4 d4 b' g8 a16 g16 g8 fs <d b>2 }
     >>
     } % ends relative
     \new Staff \relative{\clef bass  \key g  \major \time 4/4 
     g4 c,8 g d' b r8 d e c a c d c b a 
     g4 c8 b a g c, c' b b' a a, b8 a16 g16 fs8 d g c d d, g4. r8 
     g'4 a8 g8 fs4 d e8. d16 c8 a d d, r fs 
     g4 c8 b a g g'4 c,8 b c a d c b b'
     e,4 a8. g16 fs8 g c,4 d8 e8 d16 d,16 d'8 e8 d16 c16 b8 g8
     c8 b a b16 c16 d8 b e, fs g c d d, g g'16 fs e8 d16 c16 
     b8 c d d, g2 g'8 a16 b16 c8 b8 a8 e8 a,8 c 
     d c'b a g d g, b c b a g fs e d fs g e a a d d16 e16 fs8 d8 
     g,4 fs8 g8 d'4 b e8. d16 c8 a8 d8 a8 d, fs g4 c8 b a g4 b8
     c8 b8 c a d c b b' e,4 a8. g16 fs8 g8 c,4 d8 e8 d16 d,16 d'8 e8 d16 c16 b8 g8 
     c8 b8 a8 b16 c16 d8 b e, fs g8 c8 d d, g g'16 fs16 e8 d16 c16 b8 c d d, g2
     \fine }
  >>
  } % ends pianostaff
>> 
} % ends transpose

\layout{} % print pdf 
\midi{ } % produce midi file, played using tools -> midi


} % ends score 
