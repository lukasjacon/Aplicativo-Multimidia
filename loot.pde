class loot {
  float x=-50,y,size=20,time=random(100,200),timer;
  void lootbox() {
    timer+=1;
    if (timer>time) {
      x = random(width);
      y = random(height);
      timer=0;
      time=random(100,200);
    }
    fill(100,0,255);
    noStroke();
    rect(x,y,size,size);
    if (playerX>x&&playerX<x+size&&playerY>y&&playerY<y+size) {
      x=3000;
      if (score<1000) ammo=100;
      if (score>1000&&score<15000) {
        gun=1;
        ammo=200;
      }
      }
    }
  }
