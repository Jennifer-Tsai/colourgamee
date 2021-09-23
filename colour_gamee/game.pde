void game() {

  //half screen for match
  fill(0);
  rect(0, 0, 400, 800);
  noStroke();
  fill(255);
  rect(400, 0, 400, 800);

  //match and don't match titles
  textSize(110);
  fill(255);
  textFont(trailer);
  text("MATCH", 200, 80); 

  textSize(110);
  fill(0);
  text("DON'T", 600, 80);
  text("Match", 600, 180);

  //displaying puzzles
  fill(colors[c]);
  textSize(100);
  text(words[w], 400, 400);
  

  //rectangle timer 
  fill(#0DFFF1);
  rect(0, 10, 800, 30);

  fill(#0D16FF);
  rect(0, 10, timer, 30);

  timer = timer + 3;
  
  if (timer >= 800) {
    mode = GAMEOVER;
  }

 //50, 50 chance for puzzle 
  if (p == 0) {
    c = w; 
  } else if (p > 0) { 
    while (w == c) {
      w = int(random(0, 6));
      c = int(random(0, 6));
    }
  }

  

}

void gameClicks() {
  //puzzles
  p = int(random(0, 2));
  if (mouseX < 400) { //match
  if (c == w) {
   w = int(random(0, 6));
   c =int(random(0, 6));
   score = score + 1;
   timer = 0;
   } else {
    mode = GAMEOVER;
    }
  } else { //dont't match 
    if (w ==c) {
      mode = GAMEOVER;
    } else {
    w = int(random(0, 6));
    c =int(random(0, 6));
    score = score + 1;
    timer = 0;
    }
  }
}
