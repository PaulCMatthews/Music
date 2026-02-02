\version "2.24.4"
\language "english"

\header{
  title="Lascia ch'io pianga, from Rinaldo"
  subtitle="G.F. Handel"
}

\score{ 
  <<
    \new Staff
    {
      \relative {
        \key c \major \time 3/2 \tempo 2 =60
        R1.*8
        \repeat segno 2 {
        e'2 e2 r4 e f2 f r2 d2 g r4 f f( e) e2 r2
        a2 a b4 ( c8 d) g,2 g r4 c  e, (d e2)  d4 (c) c1.
        e2 c'2. a4 fs ( e) d2 r2 a'2 d2. b4 g4 ( fs) g2 r4 c4 b( a b2) a4 (g4) g1.
        e2 e2 r4 a4 f2 f r2 d2 g2 r4 f f(e) e2 r2
        a2 a b4 ( c8 d8) g,2 g r4 c4 e, ( d e2) d4 (c) c1.
        R1.*8 \fine 
        e2 a2. b4 gs (fs) e2 r2 e2 a2. b4 c (b) c2 r2 
        c2 d4 (c) b(a) d ( fs,) g2 r4 fs g (a) a1 b4 ( ds, e1)
        c'4 (b) a(g) fs(e) b'2 ds, r4 a'4 g (fs) fs1 e1.
        }\section
        }
    }
    \addlyrics {
      Las -- cia ch'io pian -- ga
      Mia cru -- da sor -- te
      E che so -- spi -- ri
      La li -- ber -- tà
      E che so -- spi -- ri
      E che so -- spi -- ri
      La li -- ber -- tà
      Las -- cia ch'io pian -- ga
      Mia cru -- da sor -- te
      E che so -- spi -- ri
      La li -- ber -- tà
      Il duo -- lo_in -- fran -- ga
      Que -- ste ri -- tor -- te
      De' miei mar -- ti -- ri
      Sol per pie -- tà
      De' miei mar -- ti -- ri
      Sol per pie -- tà
    } % end lyrics
    \new PianoStaff { % RH, do chords with low note first. Relative works using this note
       << \new Staff \relative c' {\clef treble \key c \major \time 3/2
           % Intro 
          < g c e>2 <g c e>2 r4 <g c e>4 < a c f>2 < a c f>2 r2 
          < d c g>2 <b d g>2 r4 <b d f>4 << {<g c>2 <g c>2}{ f'4 e4 e2}>> r2
          <c f a>2 <d f a> b'4 c8 d8 <b, d g>2 <c g'>2 r4 c'
          << \relative{e'4 d4 e2 d4 c4 c1. } \relative{<a c>2 c <b f > e,1.} >> 
          % Lascia
          \repeat segno 2{
          < c, e>2 < c e>2 r4 <c e> < a c f>2 < a c f>2 r4 <a c f>
          < d c g>2 <b d g>2. <b d f>4 < g c f>2 <g c e> r2
          <c f a>2 <d f a> b'4 c8 d8 <b, d g>2 <c g'>2 r4 c'
          << \relative{e'4 d4 e2 d4 c4 c1. } \relative{<a c>2 c <b f> e,1.} >>
          % Eche
          <g, c>2 <c e >2. <c e>4 <a d>2 <a fs> r2 <d fs>2 <d fs>2. <d fs>4 <b e>2 <c e>2 r4 e
          <d g >1 <<{fs2}{c4 (b4)}>> <b g'>1.
          % Lascia
          < c e>2 < c e>2 r4 <c e> < a c f>2 < a c f>2 r2
          < d c g>2 <b d g>2. <b d f>4 < g c f>2 <g c e> r2
          <c f a>2 <d f a> b'4 c8 d8 <b, d g>2 <c g'>2 r4 c'
          << \relative{e'4 d4 e2 d4 c4 c1. } \relative{<a c>2 c <b f> e,1.} >> 
          % Intro again
          <g, c e>2 <g c e>2 r4 <g c e> < a c f>2 < a c f>2 r2 
          < d c g>2 <b d g>2 r4 <b d f>4 << {<g c>2 <g c>2}{ f'4 e4 e2}>> r2
          <c f a>2 <d f a> b'4 c8 d8 <b, d g>2 <c g'>2 r4 c'
          << \relative{e'4 d4 e2 d4 c4 c1. } \relative{<a c>2 c <b f> e,1.} >>   \fine   
          % Il duolo, no tune doubling
          <a, c>2 <a e'>2. <d f>4  <b e>2 <gs b>2 r2 a <a c> <d f> <c e> <e a> r2
          % De miei
          <d fs>1 <d fs>2 <<{g4 fs e2} {d2 b2}>> r2<c e> <c e> <d fs> <<{d4 ds4}{b2}>> <g c> r2
          <a c e>2 <c e a> r2 <b e ><a ds> r4 << { b4 b4( c) b1 }{ fs'4 e1 ds2 } >> e1.
          % Something a bit wrong here. Lilypond gives a warning warning: 
          % "adding note head to incompatible stem (type = 1/4)"
          % and also tries to put a stem on the E breve in the penultimate bar?
          }\section	
          }
          \new Staff \relative{\clef bass   \key c \major \time 3/2
          c2 c2 r4 c4 d2 d r2 g,2 g r4 b4 c2 c4( b a g)
          f2 f' r f e r f g g, c1.  \repeat segno 2 {
          c2 c2 r4 c4 d2 d r4 d4  g,2 g r4 b4 c2 c4( b a g)
          f2 f' r4 f  f2 e r f g g, c1. 
          c2 a2. c4 d2 d,2 r d' b2. d4 e2 c2 r d2 d,1 g2 g'4 f! e d 
          c2 c2 r4 c4 d2 d r2  g,2 g r4 b4 c2 c4( b a g)
          f2 f' r2  f2 e r f g g, c1.           
          c2 c2 r4 c4 d2 d r2 g,2 g r4 b4 c2 c4( b a g)
          f2 f' r f e r f g g, c1.  \fine
          a2 c2. d4 e2. f!4(e d) c2 f d a' a, r 
          d c1 b2 e r c a d g, c r4 b4 a2 a'2 r 
          g fs r4 ds e(a,) b2 b,2 e2 g'4 ( f! e d) }% DS
          \section
          }
         >>
    }

  >>
 \layout{}
 \midi{}
} % end score 