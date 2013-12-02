library noise_test;

import 'package:unittest/unittest.dart';
import 'package:noise/noise.dart';

main() {
  const EPSILON = 1e-15;
  
  test('Assorted 2D simplex points', () {
    expect(simplex2( 0.0,  0.0), closeTo( 0.000000000000000, EPSILON));
    expect(simplex2( 1.2,  3.4), closeTo( 0.405937017455698, EPSILON));
    expect(simplex2( 5.6, -7.8), closeTo( 0.095324220150552, EPSILON));
    expect(simplex2(-9.0, -1.2), closeTo(-0.621074722764588, EPSILON));
    expect(simplex2(-3.4,  5.6), closeTo( 0.497980265237351, EPSILON));
  });
  
  test('Assorted 3D simplex points', () {
    expect(simplex3( 0.0,  0.0,  0.0), closeTo( 0.000000000000000, EPSILON));
    expect(simplex3( 1.2,  3.4,  5.6), closeTo( 0.418928767999998, EPSILON));
    expect(simplex3( 7.8,  9.0, -1.2), closeTo( 0.670275648000000, EPSILON));
    expect(simplex3( 3.4, -5.6,  7.8), closeTo(-0.610384844905350, EPSILON));
    expect(simplex3( 9.0, -1.2, -3.4), closeTo( 0.325317695473249, EPSILON));
    expect(simplex3(-5.6,  7.8,  9.0), closeTo( 0.078464362139917, EPSILON));
    expect(simplex3(-1.2,  3.4, -5.6), closeTo( 0.437704196477365, EPSILON));
    expect(simplex3(-7.8, -9.0,  1.2), closeTo(-0.672045119999998, EPSILON));
    expect(simplex3(-3.4, -5.6, -7.8), closeTo( 0.654590336000002, EPSILON));
  });

  test('Assorted 4D simplex points', () {
    expect(simplex4( 0.0,  0.0,  0.0,  0.0), closeTo( 0.000000000000000, EPSILON));
    expect(simplex4( 1.2,  3.4,  5.6, -7.8), closeTo(-0.440663121982768, EPSILON));
    expect(simplex4( 7.8,  9.0, -1.2,  3.4), closeTo(-0.176556592534602, EPSILON));
    expect(simplex4( 3.4, -5.6,  7.8, -9.0), closeTo( 0.095177622266928, EPSILON));
    expect(simplex4( 9.0, -1.2, -3.4, -5.6), closeTo(-0.067315359798746, EPSILON));
    expect(simplex4(-5.6,  7.8,  9.0, -1.2), closeTo(-0.239040895718183, EPSILON));
    expect(simplex4(-1.2,  3.4, -5.6,  7.8), closeTo( 0.218039473329333, EPSILON));
    expect(simplex4(-7.8, -9.0,  1.2,  3.4), closeTo( 0.095905695773838, EPSILON));
    expect(simplex4(-3.4, -5.6, -7.8,  9.0), closeTo( 0.028808587786923, EPSILON));
  });
}