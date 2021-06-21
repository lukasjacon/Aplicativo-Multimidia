class death {
  void die() {
    if (playerHealth<0) {
      dead=1;
    }
    if (dead==1) {
      start=0;
      front=3;
    }
  }
}
