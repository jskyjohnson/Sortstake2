public abstract class Sort{
  //Objects
  //blocklist that holds all the data
  Blocklist blocks = null;
  
  //booleans
  //sorted is if the blocks are sorted
  boolean sorted;
  //non-graphical update, no graphical update method should be needed for sorts
  void update(){
    
  }
  //goes to the next command
  void nextCommand(){
    
  }
  //checks if the blocks are sorted
  boolean isSorted(){
    for(int i = 0; i < blocks.getLength() -1; i++){
      if(blocks.getBlock(i).getValue() < data.getBlock(i+1).getValue()){
       return false; 
      }
    }
    return true;
  }
}