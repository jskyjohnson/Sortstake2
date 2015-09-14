//Object that holds data on the block object

class Block{
  float x; //values;
  float y;
  float value; //value is the actual value or height of the block, the thing that they're going to be sorted by
  float size; //Size is the value of the blocks X component. This will be dependant on the size of the screen, or avaible moveable space.
  //BOOLEAN VALUES
  boolean canBeMoved;  //value for if the block is in movement.
  boolean isMoved; // check value of isMoving
  boolean delay;
  float newposition;
  float speed = 15;
  int delaycounter;
  color thiscolor;
  Block(){ //default constructor
    x = 0 ;
    y = 0;
    size = 50;
    value = 50;
    newposition = x;
    isMoved = false;
    canBeMoved = true;
    thiscolor = color(255, 255, 255);
    delay = false;
    delaycounter = 2;
  }
 
  Block(float ax, float ay, float asize, float avalue){  //input constructor
   x = ax;
   y = ay;
   size = asize;
   value = avalue;
   newposition = x;
   isMoved = false;
   delay = false;
   delaycounter = 2;
   canBeMoved = true;
   thiscolor = color(255, 255, 255);
  }
  //DEFUALT METHODS
  void update(){ //void non-graphical update
    if(newposition > x){
      delay = true;
      thiscolor = color(255, 130, 130);
     if(x + speed > newposition){
      x++; 
     }else{
      x+= speed; 
     }
    }else if(newposition < x){
      delay = true;
      thiscolor = color(255, 130, 130);
      if(x - speed < newposition){
       x--; 
      }else{
       x-=speed;
      }
     
    }else if(delay){
      delaycounter--;
      if(delaycounter < 0){
       delaycounter = 2;
       delay = false;
      }
    }else{
      isMoved = false;
      canBeMoved = true;
      thiscolor = color(255,255,255);
    }
  }
  void graphicalupdate(){ //void graphical update for block object, to be called from the blocklist object
    pushMatrix();
     translate(x,y);
     fill(thiscolor);
     rect(0,0,size,value);
     textSize(8);
     //text((int)value,0,10);
     fill(color(255,255,255));
    popMatrix();
  }
  void setNewPosition(float a){//sets value for new position
    if(canBeMoved){
      this.newposition = a;
      canBeMoved = false;
      isMoved = true;
    }
    
  }
  //GET METHODS, SHOULD ONLY RETURN VALUES
  String getString(){
   return " "+value; 
  }
  float getValue(){
    return value;
  }
  float getY(){
   return y; 
  }
  float getX(){
   return x; 
  }
  float getNewPosition(){
   return newposition; 
  }
  //EDIT METHODS, SHOULD ONLY EDIT VALUES
  void setY(float newy){ // changes value of the y component
    y = newy;
  }
  void setX(float newx){ //changes value of the x compoinent
    x = newx; 
  }
  void setPosition(float a){
    newposition = a;
  }
  void resetColor(){
   thiscolor = color(255,255,255); 
  }
  void highlight(){
   thiscolor = color(130,130,130); 
  }
  
}