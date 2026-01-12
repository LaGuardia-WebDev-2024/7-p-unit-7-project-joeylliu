//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(600, 400); 
}

//🎯Variable Declarations Go Here
var rightX= 0;
var personRadius= 40;
var persontorsow = 32;

//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);
  //person - head
  fill(255,255,255);
    ellipse(300,200,personRadius,personRadius);

  //person - torso
    rect(284,215,persontorsow,42);

  //person - arm
    line(285,223,265,214);

rightX = rightX + 1;


    //left curtain
    fill(204,0,0);
    rect(rightX,150,200,200);

if(rightX>120){
  personRadius = personRadius - 1
 persontorsow = 0
}


  //Show x y values when mousepressed
  if(mousePressed){showXYPositions();}

}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255,200)
    rect(470,320,150,100,10)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 490, 360)
    fill(255, 255, 255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
