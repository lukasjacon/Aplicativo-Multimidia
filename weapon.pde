class weapon {
  float len = 10, bulletSpeed=100, buldir=1, timer, time=25,z;
  void keyPressed() {
    if (key == ' '&&ammo>0); {
      z=1;
    }
    if (keyCode==ENTER) equipped+=1;
  }
  void keyReleased() {
    if (key == ' ') z=0;
  }
  void shoot() {
    if (shoot==0) {
       buldir=dir;
    }
    if (z==1)shoot=1;
    if (shoot == 1) {
      if (buldir==1) bulletY -=bulletSpeed;
      if (buldir==2) bulletY +=bulletSpeed;
      if (buldir==3) bulletX -=bulletSpeed;
      if (buldir==4) bulletX +=bulletSpeed;
      if (buldir==5) {
        bulletX+=bulletSpeed;
        bulletY-=bulletSpeed;
      }
      if (buldir==6) {
        bulletY-=bulletSpeed;
        bulletX-=bulletSpeed;
      }
      if (buldir==7) {
        bulletX+=bulletSpeed;
        bulletY+=bulletSpeed;
      }
      if (buldir==8) {
        bulletY+=bulletSpeed;
        bulletX-=bulletSpeed;
      }
    }
    if (bulletX>width||bulletX<0||bulletY<0||bulletY>height) {
      c=1;
      if (c==1) timer +=1;
      if (timer>time) {
        ammo-=1;
        shoot=0;
        timer=0;
        c=0;
      }
    }
  }
  void show() {
    if (shoot==0) {
      bulletX=playerX;
      bulletY=playerY;
    }
    if (shoot==1&&c==0) {
      stroke(255, 255, 0);
      strokeWeight(5);
      if (buldir==1) line(bulletX, bulletY, bulletX, bulletY-len);
      if (buldir==2) line(bulletX, bulletY, bulletX, bulletY+len);
      if (buldir==3) line(bulletX, bulletY, bulletX-len, bulletY);
      if (buldir==4) line(bulletX, bulletY, bulletX+len, bulletY);
      if (buldir==5) line(bulletX, bulletY, bulletX+len, bulletY-len);
      if (buldir==6) line(bulletX, bulletY, bulletX-len, bulletY-len);
      if (buldir==7) line(bulletX, bulletY, bulletX+len, bulletY+len);
      if (buldir==8) line(bulletX, bulletY, bulletX-len, bulletY+len);
    }
    textSize(15); //aqui dá pra mudar o tamanho do texto e o nome da arma
    if (equipped==1) text("Pistol", playerX-17, playerY-35);

  }
  void equipped() {
    if (equipped>gun) equipped=1;
    if (gun<equipped)equipped=gun;
    if (equipped==1) {
      time=35;
      bulletDamage=35; //da pra mudar o dano da arma
    }
  }
}
