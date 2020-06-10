void gameOver() {
  background(purple);

  rect(400, 450, 100, 100);
  fill(0);
  textSize(15);
  text("New game?", 405,450);
  textSize(40);
  text("GAME OVER! YOU WON/LOST XD ", 400,325);
  textSize(25);
//score+highscore
  text("your score: "+ score, width/2, height/2);
//  text("highscore "+ highscore, width/2,height/3);
//  text("highscore "+ highscore, width/2,height/3);
}

void gameOverClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 350 && mouseY < 550) {
  setup();   
  mode= INTRO;}
}
