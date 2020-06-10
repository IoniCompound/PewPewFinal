class Enemy extends GameObject{

  
  int transperancy;
  
  Enemy(){
    super(random(0,width), random(0,height), 20, 1, white);
    while (touchingObstacle()){
    x= random (0,width);
    y= random (0, height);
    }
    transperancy=0;
  
  }
  
  void show(){
    fill(myColor, transperancy);
    ellipse(x,y, size, size);
  }
  
  void act(){
    super.act();
    if (transperancy<255){
    transperancy++;
    }else{
    objects.add(new Bullet(x, y, 5, 1, white));
    }
  }
}
