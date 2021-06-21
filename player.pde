class player {
  void show()  {
    fill(255, 0, 0);
    noStroke();
    //as direções
    if (dir1==1) dir=1;
    if (dir2==1) dir=2;
    if (dir3==1) dir=3;
    if (dir4==1) dir=4;
    if (dir1==1&&dir4==1) dir=5;
    if (dir1==1&&dir3==1) dir=6;
    if (dir2==1&&dir4==1) dir=7;
    if (dir2==1&&dir3==1) dir=8;
    
    //as imagens
    imageMode(CENTER);
    if (dir==1) image(up,playerX,playerY);
    if (dir==2) image(down,playerX,playerY);
    if (dir==3) image(left,playerX,playerY);
    if (dir==4) image(right,playerX,playerY);
    if (dir==5) image(upright,playerX,playerY);
    if (dir==6) image(upleft,playerX,playerY);
    if (dir==7) image(downright,playerX,playerY);
    if (dir==8) image(downleft,playerX,playerY);
  }
  //os comandos que dão o valor às variáveis
  void keyPressed() {
    if (keyCode==UP) dir1 = 1;
    if (keyCode==DOWN) dir2 = 1;
    if (keyCode==LEFT) dir3 = 1;
    if (keyCode==RIGHT) dir4 = 1;
  }
  void keyReleased() {
    if (keyCode==UP) dir1 = 0;
    if (keyCode==DOWN) dir2 = 0;
    if (keyCode==LEFT) dir3 = 0;
    if (keyCode==RIGHT) dir4 = 0;
  }
  void move() {
    if (dir1==1) playerY-=playerSpeed;
    if (dir2==1) playerY+=playerSpeed;
    if (dir3==1) playerX-=playerSpeed;
    if (dir4==1) playerX+=playerSpeed;
  }
}
