void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
}
}

void rectTactile(int x, int y, int w , int h) {
   if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
   fill(103, 207, 277);
  } else {
  fill(#FF6A0D);
  }
  
}

void reset() {
  score = 0;
  w = int(random(0, 6));
  c =int(random(0, 6));
  timer = 0;
}
