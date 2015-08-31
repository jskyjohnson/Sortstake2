//Object that holds data on the block object

class Block{
  //values;
  float x;
  float y;
  //value is the actual value or height of the block, the thing that they're going to be sorted by
  float value;
  
  //boolean values
  //value for if the block is in movement.
  boolean canBeMoved;
  //constructor
  Block(){
    
  }
  //void non-graphical update
  void update(){
    
  }
  //void graphical update for block object, to be called from the blocklist object
  void graphicalupdate(){
    
  }
  float getValue(){
    return 0.0;
  }
}