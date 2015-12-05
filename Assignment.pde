ArrayList<ArrayList<Float>> result;


void setup()
{
  size(500, 500);
  //loadData(); 
  
  loadLine();
}


void draw()
{}

void loadData()
{
    

  String lines[] = loadStrings("2005.txt");
  println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    println(lines[i]);
    
  }  
}

void loadLine()
{
  result = new ArrayList<ArrayList<Float>>();
  String[] lines = loadStrings("2005.csv");
  for (String s : lines)
  {
    ArrayList<Float> v = new ArrayList<Float>();
    String[] values = s.split(",");
    
    //start at 1 to skip month
    for(int i = 0; i < values.length; i++)
    {
      float f = Float.parseFloat(values[i]);
      v.add(f);
    }
    result.add(v);
  }
  println(result); //print out the result by separating elements.
}