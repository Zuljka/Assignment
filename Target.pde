class Target
{
  //Fields
  int xPos = 100;
  int yPos = 300;
  int size = 100;
  
  void display()
  {
     //drawing targers
  strokeWeight(2);
  //fill(255);
  ellipse (xPos, yPos, size, size);
  ellipse(xPos, yPos, size - 20, size - 20);
  ellipse(xPos, yPos, size - 40, size - 40); 
  ellipse(xPos, yPos, size - 60, size - 60);
  ellipse(xPos, yPos, size - 80, size - 80);
  point (xPos, yPos);

  line(xPos - (size/2) - 3, yPos, xPos+(size/2) +3, yPos);
  line(xPos, yPos -(size/2) -3, xPos, yPos + (size/2) +3);
  }
}