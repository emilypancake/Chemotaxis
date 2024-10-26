Bacteria army[] = new Bacteria[30];

color randomColor(){
  return color((int)(Math.random()*156+150),(int)(Math.random()*156+150),(int)(Math.random()*156+150));
}
void setup(){
  size(400, 400);
  for(int i = 0; i < army.length; i++){
    army[i] = new Bacteria();  
  }
  
}
void draw(){
  fill(0, 0, 0, 10);
  rect(0, 0, width, height);
  for(int i = 0; i < army.length; i++){
    army[i].move();
    army[i].show();
  }
  
}

class Bacteria{
  int myX, myY, myColor;
  Bacteria(){
    myX = (int)(Math.random()*width);
    myY = (int)(Math.random()*height);
    myColor = randomColor();
  }
  void move(){
    int high;
    if(key == 'h'){
      high = 10;
    }else if(key == 's'){
      high = 3;
    }else{
      high = 6;
    } 
    if(keyPressed == true & key == ' '){
      if(mouseX < myX){
        myX = myX + (int)(Math.random()*high - 1);
      }else{
        myX = myX - (int)(Math.random()*high - 1);
      }
    
      if(mouseY < myY){
         myY = myY + (int)(Math.random()*high - 1);
      }else{
        myY = myY - (int)(Math.random()*high - 1);
      }
      
    }else{
      if(mouseX > myX){
        myX = myX + (int)(Math.random()*high - 1);
      }else{
        myX = myX - (int)(Math.random()*high - 1);
      }
      
      if(mouseY > myY){
        myY = myY + (int)(Math.random()*high - 1);
      }else{
        myY = myY - (int)(Math.random()*high - 1);
      }
    }
  }
  void show(){
    fill(myColor);
    noStroke();
    ellipse(myX, myY, 30, 30);
  }
}
