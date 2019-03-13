ArrayList<FractalTreeObj> trees = new ArrayList<FractalTreeObj>();
int dt = 0;
int dt2 = 0;
int index = 0;
int[] cd = {11,60,25,5,30,30,30};
public void setup() 
{   
  frameRate(60);
  size(1200, 1200);    
  //trees.add(new FractalTreeObj(300, 300, 1));
  //trees.add(new FractalTreeObj(600, 300, 2));
  // trees.add(new FractalTreeObj(900, 300, 3));
  // trees.add(new FractalTreeObj(300, 600, 4));
  trees.add(new FractalTreeObj(600, 600, 14));
  // trees.add(new FractalTreeObj(900, 600, 6));
  //trees.add(new FractalTreeObj(300, 900, 7));
  //trees.add(new FractalTreeObj(600, 900, 8));
  // trees.add(new FractalTreeObj(900, 900, 9));
} 
public void draw() 
{   
  if (dt > 30) {
    dt2 = cd[index];
    dt = 0;
    if(index < cd.length - 1){
    index++;
    }else{
    index = 2;
    }
  } else {
    if(dt2 == 0){
    dt++;
    }
  }
  if(dt2 > 0){
  background(0);
  for (FractalTreeObj tree : trees) {
    tree.drawB();
  }
  dt2--;
  }
} 
