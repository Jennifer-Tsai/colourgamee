void intro() {
  
  //gif
  image(gif[f], 0, 0, width, height);   
  if(frameCount % 5 == 0) f = f + 1;
  if(f == frame) f = 0;

  //game title
  textSize(80);
  textAlign(CENTER, CENTER);
  textFont(komikax);
  fill(255);
  text("Colour Game", 400, 270);
  
  //start button
  fill(255);
  rectTactile(520, 590, 200, 100);
  strokeWeight(5);
  rect(520, 590, 200, 100);
  
  fill(0);
  textSize(40);
  //textAlign(CENTER, CENTER);
  text("Start", 620, 630);
  
} 

void introClicks() {
  //start button
  if (mouseX > 520 && mouseX < 720 && mouseY > 590 && mouseY < 690) {
    mode = GAME;
  }
  
}
