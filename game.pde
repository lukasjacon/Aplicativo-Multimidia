class game {
  void run() {
    background(0);
    level.levels();
    player.show();
    weapon.shoot();
    player.move();
    weapon.show();
    weapon.equipped();
    loot.lootbox();
    death.die();
    textSize(60);
    fill(255,0,0);
    text("Score:    "+floor(score),20,70);
    textSize(30);
    text("Ammo:  "+floor(ammo), 20, 170);
    text("Health:  "+floor(playerHealth), 20, 270);
    for (int i= 0; i < zombie.length; i++) {
      zombie[i].move();
      zombie[i].show();
      zombie[i].check();
    }
  }
}
