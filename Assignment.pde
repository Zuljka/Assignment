import ddf.minim.*;

Minim minim; //audio content
AudioPlayer explosion;

ArrayList<ArrayList<Float>> result;


void setup() {
  size(640, 360);
  background(255);
  loadData2005(); 
  loadLine();
  
  minim = new Minim(this);
  explosion = minim.loadFile("blast.mp3");
}      

void draw()
{
  
  if(mousePressed)
  {
  explosion.rewind();
  explosion.play();
  }
}

void loadData2005()
{
  int y = 40;
  String lines[] = loadStrings("2005.txt");
  println("there are " + lines.length + " lines");
  text("Shooting results for 2005 ", CENTER, 20);

  for (int i = 0; i < lines.length; i++) 
  {
    println(lines[i]);
    text(lines[i], 40, y);
    y += 20;
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
    for (int i = 2; i < values.length; i++)
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