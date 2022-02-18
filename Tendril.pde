public class  Tendril
{
  
  public final static int SEG_LENGTH = 30; //length of each segment in the tendril
  private int myNumSegments, myX, myY,size;
  private double myAngle;

  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    //your code here
    myNumSegments =len-1;
    myAngle= theta;
    myX = x;
    myY =y;
    
  }
  public void show()
  {
    stroke(color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255)));
    double startX = myX;
    double startY =myY;
    for(int i =0; i <myNumSegments; i++){
      myAngle+= (Math.random()*0.4)-0.2; 
      double endX = startX + Math.cos(myAngle)*SEG_LENGTH;
      double endY = startY + Math.sin(myAngle)*SEG_LENGTH;
      line((float)startX,(float)startY,(float)endX,(float)endY);
      startX=endX;
      startY=endY;
    }
     if(myNumSegments>=3){
     Cluster h = new Cluster(myNumSegments-1,(int)startX,(int)startY);
     }
     
     
   
      
  }
}
