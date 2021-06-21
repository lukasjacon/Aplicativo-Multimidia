class menu{
  color play = color(255, 20, 0, 150);
  color back;
  void show () {
    if (front==1) {
      background(0);
      background(20,0,0,255);
      textSize(100);
      fill(255,20,0,150);
      text("Among Us",460,200);
      textSize(50);
      fill(play);
      text("Play", width/2-150, 400);
      if (mouseX>width/2-160&&mouseX<width/2-60&&mouseY<400&&mouseY>340) {
        play = color(255,20,0,255);
      } else {
        play = color(255,20,0,150);
      }
      if (mousePressed&&mouseX>width/2-160&&mouseX<width/2-60&&mouseY<400&&mouseY>340) {
        reset();
        start=1;
      }
      }
    if (front==3) {
      background(0);
      fill(200,50,20);
      textSize(100);
      text("Game Over", width/2-260,400);
      textSize(50);
      text("Your Score:  "+score,width/2-200,600);
      textSize(30);
      fill(back);
      text("back to Menu", width/2-100,height-200);
      if (mouseX>width/2-100&&mouseX<width/2+100&&mouseY<height-200&&mouseY>height-220) {
        back = color(0,255,0);
      } else {
        back = color(200,50,20);
      }
      if (mousePressed&&mouseX>width/2-100&&mouseX<width/2+100&&mouseY<height-200&&mouseY>height-220) front =1;
    }
  }
}
