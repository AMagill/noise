library noise_example;

import 'dart:html';
import 'package:noise/noise.dart';

void main() {
  var canvas = document.querySelector("#canvas");
  var ctx = canvas.getContext('2d');
  
  var img = ctx.createImageData(canvas.width, canvas.height);
  var octave = makeOctave2(simplex2, 3, 0.5);
  
  for (var y = 0; y < canvas.height; y++) {
    for (var x = 0; x < canvas.width; x++) {
      //var noise = simplex2(x/50, y/50);
      var noise = octave(x/50, y/50);
      int val = ((noise + 1) * 128).round();
      int i = x + y*canvas.width;
      img.data[i*4 + 0] = val;
      img.data[i*4 + 1] = val;
      img.data[i*4 + 2] = val;
      img.data[i*4 + 3] = 255;
    }
  }
  
  ctx.putImageData(img, 0, 0);
}