class FractalTreeObj{
private int smallestBranch = 10; 
private double branchAngle = Math.PI/60;  
private int maxBranches = 2;
private boolean branchInc = true;
private int incCd = 0;
private int myX, myY;
public void drawB() 
{   
  if (maxBranches > 10) {
    maxBranches = 1;
    //branchInc = false;
  }
  if (maxBranches < 2) {
    //branchInc = true;
  }
  if(incCd > 180){
  if (branchInc) {
    //maxBranches++;
  } else {
    maxBranches--;
  }
  incCd = 0;
  //branchAngle = Math.PI/60;  
  }else{
  incCd++;
  } 
  stroke(255, 0, 0);   
  drawBranches(myX, myY, 60, Math.PI/2, 0);  
  branchAngle +=Math.PI/60;
} 
public void drawBranches(int x, int y, double branchLength, double angle, int branchnum) 
{   
  if (branchnum < maxBranches/4) {
    int temp = maxBranches/4;
    int tempb = branchnum - 0;
    stroke(255, (255 * tempb)/temp, 0);
  } else if (branchnum < maxBranches/2) {
    int temp = maxBranches/4;
    if (temp == 0) {
      temp = 1;
    }
    int tempb = branchnum - maxBranches/4;
    stroke(127 - (127 * tempb)/temp, 255, (255 * tempb)/temp);
  } else if (branchnum < maxBranches*3/4) {
    int temp = maxBranches/4;
    if (temp == 0) {
      temp = 1;
    }
    int tempb = branchnum - maxBranches/2;
    stroke(0, 255 - (255 * tempb)/temp, 255);
  } else {
    int temp = maxBranches/4;
    if (temp == 0) {
      temp = 1;
    }
    int tempb = branchnum - maxBranches*3/4;
    stroke((127 * tempb)/temp, 0, 255);
  }
  if (branchLength < smallestBranch) {
    branchLength = smallestBranch;
  }
  float newx = x- (float)(branchLength*cos((float)angle));
  float newy = y-(float)(branchLength*sin((float)angle));
  line(x, y, newx, newy);
  if (branchnum < maxBranches) {
    drawBranches((int)newx, (int)newy, branchLength-10, angle - (branchAngle-(branchAngle * (branchnum + 1)/maxBranches)), branchnum+1);
    drawBranches((int)newx, (int)newy, branchLength-10, angle + (branchAngle-(branchAngle * (branchnum + 1)/maxBranches)), branchnum+1);
  }
} 

public FractalTreeObj(int x, int y, int start){
myX = x;
myY = y;
maxBranches = start;
}
}
