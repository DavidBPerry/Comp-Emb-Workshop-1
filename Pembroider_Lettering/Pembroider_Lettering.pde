import processing.embroider.*;
PEmbroiderGraphics E;
PImage myImage;
// The image should consist of white shapes on a black background.
// The ideal image is an exclusively black-and-white .PNG or .GIF.

void setup() {
  noLoop();
  size (800, 800);

  E = new PEmbroiderGraphics(this, width, height);
  String outputFilePath = sketchPath("Pembroider_Lettering.pes");
  E.setPath(outputFilePath);

  //////////// CHANGE HERE TO SELECT LETTER ------
  myImage = loadImage("R.png");
  //////////// -----------------------------------
  
  //////////// CHANGE HERE TO AFFECT THE FILL & STROKE PARAMETERS ------
  E.stitchLength(20); /// set desired stitch length
  
  //// FILL PARAMETERS
  E.fill(0,255,0); // set fill color (red, green, blue)
  E.hatchSpacing(30); // set the stitching offset
  E.hatchMode(PEmbroiderGraphics.CROSS); // set fill mode: PARALLEL, CROSS, CONCENTRIC, SPIRAL, PERLIN, VECFIELD, DRUNK
  // E.noFill(); // uncomment to get rid of the fill
  
  //// STROKE PARAMETERS
  E.stroke(0,0,255); // stroke color
  E.strokeMode(PEmbroiderGraphics.PERPENDICULAR); // set fill mode: PERPENDICULAR or TANGENT
  E.strokeWeight(30); 
  E.strokeSpacing(5);
  // E.noStroke(); // uncomment to get rid of the stroke
 
  //////////// -----------------------------------  
  
  E.image(myImage, 0, 0);

  E.optimize();   // slow, but good and important
  E.visualize(true, true, true);  // use this to visualize different aspects of the stitch path in this order: THREAD COLOR, STITCH POINTS, TRAVEL STITCH
  E.endDraw();    // write out the file
}
