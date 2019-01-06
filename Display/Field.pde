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
