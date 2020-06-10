void game() {
  
  background(green);
  pauseButton();

  
  int i=0;
  while (i < objects.size()) {
    GameObject obj = objects.get(i);
    obj.show();
    obj.act();
    if (obj.isDead()) {
      objects.remove(i);
      }
    else{
      i++;
    }
    
  }
  if (frameCount%60==0){
    objects.add(new Enemy());
     }
}

void gameClicks() {
   if (mouseX > 0 && mouseX < width/32*3 && mouseY > 0 && mouseY < height/24*3) {
     mode= PAUSE;}
}

void pauseButton(){
  image(pause,0,0, width/32*3, height/24*3);
}
