public abstract class Sort{
  //Objects
  //blocklist that holds all the data
  Blocklist blocks = null;
  //arraylist that holds the sort commands
  ArrayList<Command> commands;
  //Int values
  int currentCommand;
  
  //booleans
  //sorted is if the blocks are sorted
  boolean sorted;
  //Constructor for Sort objects, takes in a Blocklist
  Sort(Blocklist datain){
    blocks = datain;
    commands = generateCommands(blocks);
  }
  
  //non-graphical update, no graphical update method should be needed for sorts
  void update(){
    
  }
  //generates the command arraylist;
  ArrayList<Command> generateCommands(Blocklist datain){
    return null;
  }
  //goes to the next command
  void nextCommand(){
    currentCommand++;
  }
  //checks if the blocks are sorted
  boolean isSorted(){
    for(int i = 0; i < blocks.getSize() -1; i++){
      if(blocks.getBlock(i).getValue() < blocks.getBlock(i+1).getValue()){
       return false; 
      }
    }
    return true;
  }
}