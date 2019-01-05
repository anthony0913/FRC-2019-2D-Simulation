class Field {
  public Robot[] players;
  private int[][] grid;
  private final int HEIGHT=496, WIDTH=1000;
  private int[] scoreboard;
  public Field(int time, int players) {

    //Input Values
    this.players = new Robot[players];
    scoreboard = new int[3];
    scoreboard[0]=0;
    scoreboard[1]=0;
    scoreboard[2] = time;//red score, blue score, time

    //Creating Players
    this.players[0] = new Robot(79, 248-36-32-23, 46, "red");
    this.players[1] = new Robot(79, 248-23-1, 46, "red");
    this.players[2] = new Robot(79, 248+36+32-23, 46, "red");
    this.players[3] = new Robot(1000-79-46-1, 248-36-32-23, 46, "blue");
    this.players[4] = new Robot(1000-79-46-1, 248-23-1, 46, "blue");
    this.players[5] = new Robot(1000-79-46-1, 248+36+32-23, 46, "blue");


    //


    //Create Grid
    /*
    0 = empty field
     1 = obstacles (switch bridge, scale bridge, switch walls, scale walls, arena walls)
     2 = l-switch r
     3 = l-switch b
     4 = scale r
     5 = scale b
     6 = r-switch r
     7 = r-switch b
     8 = box free
     9 =  box static x
     10 = box static y
     11 = box static
     12 = player
     13 = red platform
     14 = blue platform
     
     declaration format
     for (int i=;i<;i++){
      for(int j=;j<;j++){
        grid[i][j] = 
      }
    }
     
     */
     
     
     
    //Field
    
    grid = new int[HEIGHT][WIDTH];
    for (int i=0; i<HEIGHT; i++) {
      for (int j=0; j<WIDTH; j++) {
        grid[i][j] = 0;
      }
    }
  }




  //fetch statistics
  public int getTimer() {
    return scoreboard[2];
  }
  public Robot[] getPlayerData() {
    return players;}

  //Display
  public void show() {
    for (int i=0; i<6; i++) {
      players[i].show();
    }
  }  
}
