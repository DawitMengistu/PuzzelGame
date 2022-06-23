class reset {
  void onSetUp() {
   counter = 0;
    for (int y = 0; y < n; y++)
      for ( int x = 0; x < n; x++) {
        source.append(counter);
        numbers2[y][x] = counter++;
      }
    rW = width/n;
    rH = height/n;
    for (int y = 0; y < n; y++)
      for ( int x = 0; x < n; x++) {
        int choose = (int) random(source.size());
        numbers[x] [y] = source.get(choose);
        source.remove(choose);
      }
    for (int y = 0; y < n; y++)
      for ( int x = 0; x < n; x++) {
        if (numbers[y][x]==(n*n)-1) {
          indexX = x;
          indexY = y;
        }
      }
    for ( int x = 0; x < n; x++)
      printArray(numbers[x]);
    Rects.onPress();
  }
void RESET() {
  rW=0;
  rH=0;
  moveCounter=0;

  done=0;
  won=0;

  transparent=255;
  bgTransparent=0;

  rectLastX=0;
  rectLastY=0;

  indexX=0;
  indexY=0;
  startIndexX=0; 
  startIndexY=0;
  prIndexX=0;
  prIndexY=0;
  numbers = new int[n][n];
  numbers2 = new int[n][n];
  source = new IntList();
  counter = 0;
  for (int y = 0; y < n; y++)
    for ( int x = 0; x < n; x++) {
      source.append(counter);
      numbers2[y][x] = counter++;
    }
  rW = width/n;
  rH = height/n;
  for (int y = 0; y < n; y++)
    for ( int x = 0; x < n; x++) {
      int choose = (int) random(source.size());
      numbers[x] [y] = source.get(choose);
      source.remove(choose);
    }
  for (int y = 0; y < n; y++)
    for ( int x = 0; x < n; x++) {
      if (numbers[y][x]==(n*n)-1) {
        indexX = x;
        indexY = y;
      }
    }
  for ( int x = 0; x < n; x++)
    printArray(numbers[x]);
  Rects.onPress();
}
}
