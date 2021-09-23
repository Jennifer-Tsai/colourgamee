void gameover() {
  //gifs
  image(gif2[f2], 0, 0, width, height);   
  f2 = f2 + 1; 
  if (f2 == frame2) {
    f2 = 0;
  }

  //gamover title 
  textSize(80);
  textAlign(CENTER, CENTER);
  textFont(komikax);
  fill(255);
  text("GAMEOVER", 400, 200);
  
  //score title 
  textSize(60);
  fill(255);
  text("SCORE:" + score, 310, 340);
  text("HIGHSCORE:" + highscore, 310, 450);

  //back to intro 
  rectTactile(520, 590, 220, 100);
  rect(520, 590, 220, 100);
  fill(0);
  strokeWeight(5);
  textSize(20);
  textFont(trailer);
  text("Back", 625, 630);
  
  //score and highscore
  if (score >= highscore) {
  highscore = score;
  }
}

void gameoverClicks() {
  //back button 
  if (mouseX > 520 && mouseX < 740 && mouseY > 590 && mouseY < 690) {
    mode = INTRO;
    reset();
  }
}
