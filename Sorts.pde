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
  void update(){ //commands and stuff
    if(!sorted){ // checks to see if it's sorted, if it is, will not run the command
      try{
      int looking = commands.get(currentcommand).getType(); // gets the type of command, 1 is a swap command, 
      switch(looking){ // switch to see what command it is
       case 1: // does swap
         if(this.blocks.swapblock(commands.get(this.currentcommand).a,commands.get(this.currentcommand).b)){ // if it returns true, will go to the next command
             this.nextCommand(); // increase the current command
         }else{
         }
         break;
       case 2:
         blocks.highlightPivot(commands.get(looking).a);
         //System.out.println("STUFF");
         break;
       case 3:
         System.out.println("TEST SUCSESSFULL [sic]");
       default:
      }
      }catch (Exception e){
       System.out.println("You killed it!!");
      }
    }
  }
  //Generation of arraylist must be done inside abstract
  
  void canNextCommand(){ //updates boolean can next command.
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

public static String printLineArray(float[] indata){ // returns a string of an array
   String k = "";
   for(int i = 0; i < indata.length; i++){
    k += " " + indata[i]; 
   }
   return k;
 }