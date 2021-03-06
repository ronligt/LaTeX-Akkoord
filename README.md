# Akkoord package for LaTeX
Drawing guitar chords using TikZ. Layout includes finger placement with free form fingername, Mute and Open above string, extra info below each string, position on left of chord, title on top of chord and automagically created bows.

Copyright 2017 Ronald Ligteringen <[r.ligteringen@gmail.com](mailto:r.ligteringen@gmail.com)>

# Usage

```latex
\akkoord[<position>]{<snare1>,<snare2>,...,<snare6>}{<chord-name>}
```
* `<snaren>` can have the following forms:
    * `-` leaves the snare empty
    * `-/<info>` only writes `info` below the snare. If `info` is set to `-` no info is written
    * `m/<info>` mutes the snare with an `X` above the snare (`info` below)
    * `o/<info>` indicates open snare with an `O` above the snare (`info` below)
    * `<fret>/<finger>/<info>` places the `finger` on the `fret` (`info` below). If `finger` is set to `-` no finger is written inside fret
* `<position>` is written on the left of the first fret. If omitted position defaults to `I`. If set to `-` no position is written
* `<chord-name>` is written above the chord in the middle. If set to `-` no chord name is written
* if the same finger is used more than once on the same fret a bar is drawn automagically between the lowest and highest snare


# Examples

```latex
\akkoord{x,3,2,3,1,x}{C\textsubscript{7}}
```
draws a C<sub>7</sub> chord with only circles on the finger placements and mute symbols on top. Defaulting to `I` the position is written on the left and a nut is drawn

![Image C7](examples/example_c7.png)

```latex
\akkoord[II]{2/1/1,x,3/3/{$\sharp$7},3/4/3,2/2/5,x}{G\textsubscript{$\triangle$}}
```
draws a G<sub>&#9651;</sub> chord with fingers inside the circles and relative notes on the scale below the chord. Position `II` is written on the left (no nut)

![Image GMaj7](examples/example_gmaj7.png)

```latex
\akkoord[II]{x,2/1/1,4/3/5,2/1/7,3/2/{$\flat$3},2/1/{(5)}}{C-\textsubscript{7}}
```
draws a C-<sub>7</sub> chord with a bow for finger 1 on the 2nd fret between 2nd snare from the left (A) and first snare from the right (high E)

![Image C-7](examples/example_c-7.png)

```latex
\akkoord{x,o/-,o/{root},2/1/-,3/3/{root},2/2/-}{D}
```
draws a D chord with one mute and two open symbols on top and two `root`'s below the chord at the third snare from the left (D) and the second snare from the right (B)

![Image D](examples/example_d.png)
