import ddf.minim.*;

int xPos = 100;
int yPos = 300;
int size = 100;

Minim minim; //audio content
AudioPlayer shoot; //creating audio file

ArrayList<ArrayList<Float>> result;


void setup() {
  size(500, 500);
  background(255,0,0);
  loadData2005(); //load data and display in window
  loadLine(); //load data and display in console window
  
  minim = new Minim(this);
  shoot = minim.loadFile("blast.mp3");
}      

void draw()
{
  //drawing targers
  strokeWeight(2);
  fill(255);
  ellipse (xPos, yPos, size, size);
  ellipse(xPos, yPos, size - 20, size - 20);
  ellipse(xPos, yPos, size - 40, size - 40); 
  ellipse(xPos, yPos, size - 60, size - 60);
  ellipse(xPos, yPos, size - 80, size - 80);
  point (xPos, yPos);

line(xPos - (size/2) - 3, yPos, xPos+(size/2) +3, yPos);
line(xPos, yPos -(size/2) -3 , xPos, yPos + (size/2) +3);
  
    if(mousePressed)
  {
  shoot.rewind(); // to make sure sound will start from the beginnig
  shoot.play();
  strokeWeight(4);
  //fill(0);
  point(mouseX, mouseY);
  }
  
  
}

void loadData2005()
{
  int y = 40;
  String lines[] = loadStrings("2005.txt"); //January  22  386
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