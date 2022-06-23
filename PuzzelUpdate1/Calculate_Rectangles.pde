class rects{
void onPress() {
  strokeWeight(2);
  for (int y = 0; y < n; y++) {
    for ( int x = 0; x < n; x++) 
    {
      fill(255);
      //rect(x*rW, y*rH, rW, rH);
      fill(0);
      int[] imgValue = GetIndex.giveMe(numbers[y][x]);
      copy(img, imgValue[0], imgValue[1], (int)rW, (int)rH, int(x*rW), int(y*rH), (int)rW, (int)rH);
      //text(numbers[y][x], x*rW+rW/2, y*rH + rH/2);
    }
  }
  for (int y = 0; y < n; y++) {
    for ( int x = 0; x < n; x++) 
    {
      if (numbers[y][x] == numbers2[y][x]) {
        done++;
        if (done==(n*n)-1) {
          won=1;
        }
      } else {
        done=0;
      }
    }
  }
  fill(255 , 243 ,0);
  noStroke();
  rect(indexX*rW, indexY*rH, rW, rH);
}



}
