//Object that holds data on the block object

class Block{
  float x; //values;
  float y;
  float value; //value is the actual value or height of the block, the thing that they're going to be sorted by
  float size; //Size is the value of the blocks X component. This will be dependant on the size of the screen, or avaible moveable space.
  //BOOLEAN VALUES
  boolean canBeMoved;  //value for if the block is in movement.
  
  Block(){ //default constructor
    x = 0 ;
    y = 0;
    size = 50;
    value = 50;
  }
 
  Block(float ax, float ay, float asize, float avalue){  //input constructor
   x = ax;
   y = ay;
   size = asize;
   value = avalue;
  }
  //DEFUALT METHODS
  void update(){ //void non-graphical update
    
  }
  
  void graphicalupdate(){ //void graphical update for block object, to be called from the blocklist object
    pushMatrix();
     translate(x,y);
     rect(0,0,size,value);
    popMatrix();
  }
  //GET METHODS, SHOULD ONLY RETURN VALUES
  float getValue(){
    return 0.0;
  }
  //EDIT METHODS, SHOULD ONLY EDIT VALUES
  void setY(float newy){ // changes value of the y component
    y = newy;
  }
  void setX(float newx){ //changes value of the x compoinent
    x = newx; 
  }
}