class Robot{
  private float[] pos = new float[2];
  private final int size;
  private String team;
  private float direction; //Direction is represented in radians with 0 representing straight right
  private float speed;
  private int moving = 0;
  
  public Robot(int startX, int startY, int size, String team){
    pos[0] = startX;
    pos[1] = startY;
    this.size = size;
    this.team = team;
    if(team=="red") direction = 0;
    if(team=="blue") direction = PI;
    speed = 2.5*(46.0/size);
  }
  
  //Fetch Statistics
  public float getPosX(){
    return pos[0];
  }
  public float getPosY(){
    return pos[1];
  }
  public int getSize(){
    return size;
  }
  public float getDir(){
    return direction;
  }
  
  //Display
  void show(){  
    pushMatrix();
    translate(pos[0]+size/2,pos[1]+size/2); //Robots use their centers as pivot points
    rotate((-1)*direction);
    fill(55,55,55);
    rect(-size/2,-size/2,size,size);
    
    //Direction Arrow
    strokeWeight(2);
    line(0,0,100,0);
    strokeWeight(1);
    
    //Team Marker
    if (team=="red")fill(255,0,0);
    if (team=="blue")fill(0,0,255);
    rect(-3,-3,6,6);
    popMatrix();
  }
  
  //Movement
  public void move(){
    pos[0]+=cos(-direction)* speed * moving;
    pos[1]+=sin(-direction)* speed * moving;
  }
  public void changeMoving(int x){
    moving = x;}
  public void turnLeft(){
    direction+=0.05;}
  public void turnRight(){
    direction-=0.05;}
}
