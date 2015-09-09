public abstract class Sort{
  //Objects
  //blocklist that holds all the data
  Blocklist blocks = null;
  //arraylist that holds the sort commands
  ArrayList<Command> commands;
  //Int values
  int currentcommand;
  
  //booleans
  //sorted is if the blocks are sorted
  boolean sorted;
  //Constructor for Sort objects, takes in a Blocklist
  Sort(Blocklist datain){
    blocks = datain;
    currentcommand = 0;
    //commands = generateCommands(blocks);
  }
  
  //non-graphical update, no graphical update method should be needed for sorts
  void update(){
    
  }
  //Generation of arraylist must be done inside abstract
  
  void canNextCommand(){
    if(currentcommand + 1 == commands.size()){
     sorted = true; 
    }
  }
  //goes to the next command
  void nextCommand(){
    canNextCommand();
    currentcommand++;
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