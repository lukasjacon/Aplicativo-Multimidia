import ddf.minim.*;

Minim minim;
AudioPlayer song;

float start;
float score;
float playerHealth;
float gun;
float playerX, playerY;
float transX, transY;
float playerSpeed;
float x;
float bulletX, bulletY, shoot;
float dir=1;
float equipped=1;
float dir1, dir2, dir3, dir4;
PImage up,down,left,right,upleft,upright,downleft,downright;
float ammo,bulletDamage;
float zombieDamage=0.05;
float zombieSpeed=1.25;
float c;
float timer=200;
float diff;
float dead;
float front=1;

//classes
menu menu;
game game;
player player;
weapon weapon;
loot loot;
level level;
death death;
zombie[] zombie = new zombie[5];

void setup() {
  fullScreen();
  minim = new Minim(this);
  song = minim.loadFile("song.mp3");
  song.loop();
  zombie();
  transX=width/2;
  transY=height/2;
  reset();
  menu = new menu();
  death = new death();
  game = new game();
  player = new player();
  weapon = new weapon();
  level = new level();
  loot = new loot();
  up = loadImage("playerImage.png");
  down = loadImage("playerImage.png");
  left = loadImage("playerImage.png");
  right = loadImage("playerImage.png");
  upleft = loadImage("playerImage.png");
  upright = loadImage("playerImage.png");
  downleft = loadImage("playerImage.png");
  downright = loadImage("playerImage.png");
}

void zombie() {
    for (int i = 0; i < zombie.length; i++) {
    zombie[i] = new zombie();
    }
}

void draw() {
  text(frameRate,20,20);
  if (start==0) menu.show();
  if (start==1) game.run();
}

void reset() {
 playerHealth=100;
 playerSpeed=5;
 gun=1;
 score=0;
 playerX=width/2;
 playerY=height/2;
 ammo=100;
}

void keyPressed() {
 player.keyPressed();
 weapon.keyPressed();
}

void keyReleased() {
  player.keyReleased();
  weapon.keyReleased();
}
