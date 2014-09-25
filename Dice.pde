Die bob;

void setup()
{
	size(400,400);
	noLoop();
	textAlign(CENTER);
	bob = new Die(100,150);
}
void draw()
{
	background(0);
	Die bob = new Die(0,0);
	bob.show();
	
}
void mousePressed()
{
	redraw();
}
class Die{ //models one single dice cube
  //variable declarations here
  int myX, myY, roll, dots, roll2, dots2;
  Die(int x, int y){ //constructor		
    roll = (int)(Math.random() * 6) + 1;
    myX = 147;
    myY = 81;
    dots = round(roll);
    roll2 = (int)(Math.random() * 6) + 1;
    dots2 = round(roll2);
    //dots = round(roll2);
  }
  void show(){
    
    fill(255, 255, 255);
    noStroke();
    rect (100,152,75,75,4);
    if (roll == 1){
      fill(255, 255, 255);
      noStroke();
      rect (100,152,75,75,10);
      fill(0, 0, 0);
      ellipse (137,191,20,20);
     }
     if (roll == 2){
        fill(255, 255, 255);
        noStroke();
        rect (100,152,75,75,10);
        fill(0, 0, 0);
        ellipse (151,178,20,20);
        ellipse (120,203,20,20);
      }
      if(roll == 3){
        fill(255, 255, 255);
        noStroke();
        rect (100,152,75,75,10);
        fill(0, 0, 0);
        ellipse (157,171,20,20);
        ellipse (116,208,20,20);
        ellipse (137,190,20,20);
       }
      if (roll == 4){
        fill(255, 255, 255);
        noStroke();
        rect (100,152,75,75,10);
        fill(0, 0, 0);
        ellipse (154,173,20,20);
        ellipse (121,208,20,20);
        ellipse (121,173,20,20);
        ellipse (154,208,20,20);
      }
      if (roll == 5){
        fill(255, 255, 255);
        noStroke();
        rect (100,152,75,75,10);
        fill(0, 0, 0);
        ellipse (154,173,20,20);
        ellipse (121,208,20,20);
        ellipse (121,173,20,20);
        ellipse (154,208,20,20);
        ellipse (137,190,20,20);
       }
      if(roll == 6){
          fill(255, 255, 255);
          noStroke();
          rect (100,152,75,75,10);
          fill(0, 0, 0);
          ellipse (154,166,20,20);
          ellipse (121,214,20,20);
          ellipse (121,166,20,20);
          ellipse (154,214,20,20);
          ellipse (154,190,20,20);
          ellipse (121,190,20,20);
        }
        
        fill(255, 255, 255);
        rect (200,152,75,75,4);
    if (roll2 == 1){
      fill(255, 255, 255);
      noStroke();
      rect (200,152,75,75,10);
      fill(0, 0, 0);
      ellipse (237,191,20,20);
     }
     if (roll2 == 2){
        fill(255, 255, 255);
        noStroke();
        rect (200,152,75,75,10);
        fill(0, 0, 0);
        ellipse (251,178,20,20);
        ellipse (220,203,20,20);
      }
      if(roll2 == 3){
        fill(255, 255, 255);
        noStroke();
        rect (200,152,75,75,10);
        fill(0, 0, 0);
        ellipse (257,171,20,20);
        ellipse (216,208,20,20);
        ellipse (237,190,20,20);
       }
      if (roll2 == 4){
        fill(255, 255, 255);
        noStroke();
        rect (200,152,75,75,10);
        fill(0, 0, 0);
        ellipse (254,173,20,20);
        ellipse (221,208,20,20);
        ellipse (221,173,20,20);
        ellipse (254,208,20,20);
      }
      if (roll2 == 5){
        fill(255, 255, 255);
        noStroke();
        rect (200,152,75,75,10);
        fill(0, 0, 0);
        ellipse (254,173,20,20);
        ellipse (221,208,20,20);
        ellipse (221,173,20,20);
        ellipse (254,208,20,20);
        ellipse (237,190,20,20);
       }
      if(roll2 == 6){
          fill(255, 255, 255);
          noStroke();
          rect (200,152,75,75,10);
          fill(0, 0, 0);
          ellipse (254,166,20,20);
          ellipse (221,214,20,20);
          ellipse (221,166,20,20);
          ellipse (254,214,20,20);
          ellipse (254,190,20,20);
          ellipse (221,190,20,20);
        }
        
  fill(95, 207, 198);
  textSize(50);
  text(dots, 135, 120);
  text(dots2, 235, 120);
  if (mousePressed && mouseX > myX && mouseX < myX+100 && mouseY > myY && mouseY < myY+50){
    fill(0, 255, 89);
    roll = (int)(Math.random() * 6) + 1;
    dots = round(roll);
  }
  
    
	}
}
