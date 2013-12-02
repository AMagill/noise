part of noise;

makeOctave2(double func(x, y), int octaves, double persistence) {
  var amp    = 1.0;
  var maxAmp = 0.0;

  for (var i = 0; i < octaves; i++) {
    maxAmp += amp;
    amp    *= persistence;
  }
    
  double octave2(double x, double y) {
    var total  = 0.0;
    var freq   = 1.0;
    var amp    = 1.0;

    for (var i = 0; i < octaves; i++) {
      total  += func(x * freq, y * freq) * amp;
      freq   *= 2.0;
      amp    *= persistence;
    }
    
    return total / maxAmp;
  }
  
  return octave2;
}

makeOctave3(double func(x, y, z), int octaves, double persistence) {
  var amp    = 1.0;
  var maxAmp = 0.0;

  for (var i = 0; i < octaves; i++) {
    maxAmp += amp;
    amp    *= persistence;
  }
    
  double octave3(double x, double y, double z) {
    var total  = 0.0;
    var freq   = 1.0;
    var amp    = 1.0;

    for (var i = 0; i < octaves; i++) {
      total  += func(x * freq, y * freq, z * freq) * amp;
      freq   *= 2.0;
      amp    *= persistence;
    }
    
    return total / maxAmp;
  }
  
  return octave3;
}

makeOctave4(double func(x, y, z, w), int octaves, double persistence) {
  var amp    = 1.0;
  var maxAmp = 0.0;

  for (var i = 0; i < octaves; i++) {
    maxAmp += amp;
    amp    *= persistence;
  }
    
  double octave4(double x, double y, double z, double w) {
    var total  = 0.0;
    var freq   = 1.0;
    var amp    = 1.0;

    for (var i = 0; i < octaves; i++) {
      total  += func(x * freq, y * freq, z * freq, w * freq) * amp;
      freq   *= 2.0;
      amp    *= persistence;
    }
    
    return total / maxAmp;
  }
  
  return octave4;
}