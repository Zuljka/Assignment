import ddf.minim.*;
PImage back;

int xPos = 100;
int yPos = 400;
int size = 100;
int selector = 0;


Minim minim; //audio content
AudioPlayer shoot; //creating audio file

ArrayList<ArrayList<Float>> result;

Target target; //instance of Target class



void setup() {
  size(500, 500);
  back = loadImage("wallpaper.jpg");
  background(back);
  loadData2005(); //load data and display in window
  loadData2006();
  loadLine(); //load data and display in console window


  minim = new Minim(this);
  shoot = minim.loadFile("blast.mp3");

  target = new Target();

  //drawing targets
  target.display();
}      

void draw()
{
 
}


void mousePressed()
{
  if (mouseX > xPos - (size/2) && mouseX < xPos + (size/2) &&
    mouseY < yPos+(size/2) && mouseY > yPos-(size/2) )
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
  text("Shooting results from air rifle ( 10 m distance ) for 2005 ", 20, 20);

  for (int i = 0; i < lines.length; i++) 
  {
    println(lines[i]);
    text(lines[i], 40, y);
    y += 20;
  }
}

void loadData2006()
{
  int y = 280;
  String lines[] = loadStrings("2006.txt"); //January  22  386
  println("there are " + lines.length + " lines");
  text("Shooting results from air rifle ( 10 m distance ) for 2006 ", 150, 240);

  for (int i = 0; i < lines.length; i++) 
  {
    println(lines[i]);
    text(lines[i], 300, y);
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
}


void keyPressed()
{
  if (key >= '0' && key <='9')
  {
    selector = key - '0';
  }
  //println(selector); // to see selected option in console window
}