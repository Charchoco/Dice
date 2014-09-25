import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Dice extends PApplet {

Die bob;

public void setup()
{
	size(400,400);
	noLoop();
	textAlign(CENTER);
	bob = new Die(100,150);
}
public void draw()
{
	background(0);
	Die bob = new Die(0,0);
	bob.show();
	
}
public void mousePressed()
{
	redraw();
}
class Die{ //models one single dice cube
  //variable declarations here
  int myX, myY, roll, dots;
  Die(int x, int y){ //constructor		
    roll = (int)(Math.random() * 6) + 1;
    myX = 147;
    myY = 81;
    dots = round(roll);
  }
  public void show(){
    
    fill(255, 255, 255);
    noStroke();
    rect (163,152,75,75,4);
    if (roll == 1){
      fill(255, 255, 255);
      noStroke();
      rect (163,152,75,75,10);
      fill(0, 0, 0);
      ellipse (200,191,20,20);
     }
     if (roll == 2){
        fill(255, 255, 255);
        noStroke();
        rect (163,152,75,75,10);
        fill(0, 0, 0);
        ellipse (214,178,20,20);
        ellipse (183,203,20,20);
      }
      if(roll == 3){
        fill(255, 255, 255);
        noStroke();
        rect (163,152,75,75,10);
        fill(0, 0, 0);
        ellipse (220,171,20,20);
        ellipse (179,208,20,20);
        ellipse (200,190,20,20);
       }
      if (roll == 4){
        fill(255, 255, 255);
        noStroke();
        rect (163,152,75,75,10);
        fill(0, 0, 0);
        ellipse (217,173,20,20);
        ellipse (184,208,20,20);
        ellipse (184,173,20,20);
        ellipse (217,208,20,20);
      }
      if (roll == 5){
        fill(255, 255, 255);
        noStroke();
        rect (163,152,75,75,10);
        fill(0, 0, 0);
        ellipse (217,173,20,20);
        ellipse (184,208,20,20);
        ellipse (184,173,20,20);
        ellipse (217,208,20,20);
        ellipse (200,190,20,20);
       }
      if(roll == 6){
          fill(255, 255, 255);
          noStroke();
          rect (163,152,75,75,10);
          fill(0, 0, 0);
          ellipse (217,166,20,20);
          ellipse (184,214,20,20);
          ellipse (184,166,20,20);
          ellipse (217,214,20,20);
          ellipse (217,190,20,20);
          ellipse (184,190,20,20);
        }
  fill(95, 207, 198);
  textSize(50);
  text(dots, 200, 100);
  if (mousePressed && mouseX > myX && mouseX < myX+100 && mouseY > myY && mouseY < myY+50){
    fill(0, 255, 89);
    roll = (int)(Math.random() * 6) + 1;
    dots = round(roll);
  }
  
    
	}
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Dice" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
