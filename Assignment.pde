ArrayList<ArrayList<Float>> result;


void setup()
{
  size(500, 500);
  background(0);
  loadData(); 
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
    //println(values.length);
    //println(s);  //prints result of each line as it is in the file
    for(int i = 2; i < values.length; i++)
    {
      float f = Float.parseFloat(values[i]); 
      v.add(f);
    
      
      println(f); //prints result
     
    }
    result.add(v);
  }
  //println(result); 

 //print out the result by separating elements.
}