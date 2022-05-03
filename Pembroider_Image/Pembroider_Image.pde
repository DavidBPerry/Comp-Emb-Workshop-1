// Test program for the PEmbroider library for Processing:


import processing.embroider.*;
PEmbroiderGraphics E;
PImage myImage;
// The image should consist of white shapes on a black background. 
// The ideal image is an exclusively black-and-white .PNG or .GIF.

void setup() {
  noLoop(); 
  size (800, 800);

  E = new PEmbroiderGraphics(this, width, height);
  String outputFilePath = sketchPath("PEmbroider_bitmap_image_2.pes");
  E.setPath(outputFilePath); 

  
  myImage = loadImage("A.png"); ///////////////////////////////////<------------------
  
  E.noStroke();
  E.fill(0, 0, 255); // Blue fill
  E.setStitch(5,30,0);
  E.hatchSpacing(10);
  E.hatchMode(PEmbroiderGraphics.CROSS);
  E.image(myImage, 0, 0); 
  

  //-----------------------
   E.optimize();   // slow, but good and important
  E.visualize(true,true,true);  // 
  E.printStats(); //
   E.endDraw();    // write out the file
  // save("PEmbroider_bitmap_image_2.png");
}


//--------------------------------------------
void draw() {
  ;
}
