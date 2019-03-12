ArrayList<FractalTreeObj> trees = new ArrayList<FractalTreeObj>();
public void setup() 
{   
  frameRate(60);
  size(1200, 1200);    
  trees.add(new FractalTreeObj(300, 300, 1));
  trees.add(new FractalTreeObj(600, 300, 2));
  trees.add(new FractalTreeObj(900, 300, 3));
  trees.add(new FractalTreeObj(300, 600, 4));
  trees.add(new FractalTreeObj(600, 600, 5));
  trees.add(new FractalTreeObj(900, 600, 6));
  trees.add(new FractalTreeObj(300, 900, 7));
  trees.add(new FractalTreeObj(600, 900, 8));
  trees.add(new FractalTreeObj(900, 900, 9));
} 
public void draw() 
{   
  background(0);
  for (FractalTreeObj tree : trees) {
    tree.drawB();
  }
} 
