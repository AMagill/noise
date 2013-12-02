Noise
=====

This package provides algorithms for generating gradient noise.  For now it only supports the Simplex noise algorithm and automatic octave summation in 2, 3, and 4 dimensions.

## Usage ##
To find a single point of 2D simplex noise:

```dart
double value = simplex2(1.2, 3.4);
```

To find a single point of 2D simplex noise with 3 octaves and persistence of 0.5:

```dart
var octave = makeOctave2(simplex2, 3, 0.5);
double value = octave(5.6, 7.8);
```