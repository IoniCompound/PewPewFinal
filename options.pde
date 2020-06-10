void options(){
  background(white);

  noStroke();
  fill(red);
  ellipse(100, 125, 50, 50);
  fill(orange);
  ellipse(200, 125, 50, 50);
  fill(green);
  ellipse(300, 125, 50, 50);
  fill(purple);
  ellipse(400, 125, 50, 50);
  fill(blue);
  ellipse(500, 125, 50, 50);
  fill(0);
  ellipse(600, 125, 50, 50);
  strokeWeight(3);

  fill(255);
//  rect(0,height-25,150,50);
  fill(0);
  text("Menu", 25, height-25);
  fill(255);
//  rect(300,500, 100, 100);
  fill(0);
  text("play",400,550);
}
void optionsClicks(){
  if (mouseX > 0 && mouseX < 150 && mouseY > height-25 && mouseY < height) {
    mode = INTRO;}
    
  if (mouseX > 300 && mouseX < 500 && mouseY > 400 && mouseY < 600) {
     mode= GAME;}
     //cursor(CROSS);  } 
    
    //Color buttons switch
 
 /* if (dist(600, 125, mouseX, mouseY) <= 25) {
    colorCurrent=orange;

  }
  if (dist(500, 125, mouseX, mouseY) <= 25) {
    colorCurrent=blue;

  }
  if (dist(400, 125, mouseX, mouseY) <= 25) {
    colorCurrent=purple;

  }
  if (dist(300, 125, mouseX, mouseY) <= 25) {
    colorCurrent=green;

  }
  if (dist(200, 125, mouseX, mouseY) <= 25) {
    colorCurrent=orange;

  }
  if (dist(100, 125, mouseX, mouseY) <= 25) {
  
    colorCurrent=red;
  }
  
*/


}
