class level {
  void levels() {
    if (score>0&&score<3000) {
      zombieSpeed=1.25;
      zombieDamage=0.05;
      timer=200;
    }
    if (score>3000&&score<10000) {
      zombieSpeed=1.5;
      zombieDamage=0.1;
      timer=150;
    }
    if (score>10000&&score<15000) {
      zombieSpeed=1.75;
      zombieSpeed=0.15;
      timer=100;
    }
    if (score>15000&&score<20000) {
      zombieSpeed=2;
      zombieDamage=0.25;
      timer=75;
    }
    if (score>20000&&score<25000) {
      zombieSpeed=2.25;
      zombieDamage=0.35;
      timer=25;
    }
    if (score>25000&&score<30000) {
      zombieSpeed=3;
      zombieDamage=0.5;
      timer=1;
    }
    if (score>30000&&score<35000) {
      zombieSpeed=3.2;
      zombieDamage=0.6;
      timer=1;
    }
    if (score>35000&&score<40000) {
      zombieSpeed=3.4;
      zombieDamage=0.6;
      timer=1;
    }
    if (score>40000&&score<45000) {
      zombieSpeed=3.6;
      zombieDamage=0.8;
      timer=1;
    }
    if (score>45000&&score<50000) {
      zombieSpeed=3.8;
      zombieDamage=0.9;
      timer=1;
    }
    if (score>50000&&score<55000) {
      zombieSpeed=4;
      zombieDamage=1;
      timer=1;
    }
    if (score>55000) {
      zombieSpeed=4.9;
      zombieDamage=1.2;
      timer=1;
    }
  }
}
