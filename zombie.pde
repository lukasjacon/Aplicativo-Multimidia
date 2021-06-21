class zombie {
  float respawntimes = 10;
  float size = 50;
  float sizex = random(45,55),sizey=random(45,55);
  float zombieX = random(width), zombieY=random(height), zombieH=100, zombieT;
  color health = color(50,255,20);
  void show() {
    for (int i = 0; i < zombie.length; i++) {
      health = color(100-zombieH,0+zombieH,20);
      fill(health);
      stroke(100);
      strokeWeight(2);
      ellipse(zombieX, zombieY, sizex, sizey);
    }
  }
  void move() {
    if (zombieX < playerX) zombieX = zombieX + zombieSpeed;
    if (zombieX > playerX) zombieX = zombieX - zombieSpeed;
    if (zombieY < playerY) zombieY = zombieY + zombieSpeed;
    if (zombieY > playerY) zombieY = zombieY - zombieSpeed;
  }
  void check() {
    for (int i = 0; i < zombie.length; i++) {
      if (zombieX > playerX-size && zombieX < playerX+size && zombieY > playerY-size && zombieY < playerY+size) playerHealth-=zombieDamage;
      if (bulletX > zombieX-size && bulletX < zombieX+size && bulletY > zombieY-size && bulletY < zombieY + size&&shoot==1) {
        zombieH-=bulletDamage;
        c=1;
        bulletX=999999;
      }
      if (zombieH<0) {
        zombieX = 9999;
        zombieH = 100;
        respawntimes-=1;
        score+=150;
      }
      if (zombieX>width) zombieT+=1;
      if (zombieT>timer) {
        zombieX = random(width);
        zombieY = random(height);
        zombieT=0;
      }
    }
  }
}
