class Player extends GameObject {

  Player(){
    super(width/2, height/2, 20, 1, yellow);
    
  }
  //void show and boolean "is dead" is inherited from the super class
  void act (){  //override!
    super.act();
    //respond to keypreses
    if (wkey) vy = -4;
    if (akey) vx = -4;
    if (skey) vy =  4;
    if (dkey) vx =  4;
    //stop if playerlets go of keys
    if(!wkey && !skey) vy=0;
    if(!akey && !dkey) vx=0;
    //keep player on the screen
    if (x<0) x=0;
    if (x>width) x=width;
    if (y<0) y=0;
    if (y>height) y=height;
    //shooting
     shoot();
  }
  void shoot(){
     if (mousePressed) {
       objects.add(new Bullet(x, y, 5, 1, yellow));
  }
  }
}
