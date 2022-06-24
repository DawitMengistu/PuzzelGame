class getIndex {
    int[] giveMe(int Value) {
      int[] val= new int [2];
      for (int y = 0; y < n; y++) {
        for ( int x = 0; x < n; x++) 
        {
          if (Value ==numbers2[y][x]) {
            val[0] = int(x)*(int)rW;
            val[1] = int(y)*(int)rH;
          }
        }
      }
      return val;
    }
  
}
