class OnkeyPress {

  void onKeyPress() {
    if (keyCode== ENTER) {
      prIndexX=   indexX;
      prIndexY =   indexY;

      indexX+=1;
      indexY+=1;
      //prIndexX-=1;
      //prIndexY-=1;
      int temp = numbers[prIndexY][prIndexX];
      numbers[prIndexY][prIndexX] = numbers[indexY][indexX];
      numbers[indexY][indexX] = temp;
      Rects.onPress();
    }
    if (keyCode >= LEFT && keyCode<=DOWN) {
      prIndexX=   indexX;
      prIndexY =   indexY;
      if (keyCode==RIGHT && indexX<n-1) {
        moveCounter++;
        indexX+=1;
      }
      if (keyCode==LEFT && indexX>0) {
        moveCounter++;
        indexX-=1;
      }
      if (keyCode==DOWN && indexY<n-1) {
        moveCounter++;
        indexY+=1;
      }
      if (keyCode==UP && indexY>0) {
        moveCounter++;
        indexY-=1;
      }
      int temp = numbers[prIndexY][prIndexX];
      numbers[prIndexY][prIndexX] = numbers[indexY][indexX];
      numbers[indexY][indexX] = temp;
    }
    Rects.onPress();
  }
}
