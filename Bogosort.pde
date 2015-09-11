class Bogosort extends Sort{
  //See sort abstract
  //only swaps the two first places.
   
  Bogosort(Blocklist datain){
    super(datain);
    super.commands = generateCommands(datain);
  }
  
  ArrayList<Command> generateCommands(Blocklist datain){ // generates the list of commands. This is where the list will be generated.
    ArrayList<Command> commandlist = new ArrayList<Command>();
    boolean notSorted = true;
    while(notSorted){
     // System.out.println(datain.getSize());
      commandlist.add(new Command((int)random(blocks.getSize()),(int)random(blocks.getSize()),1));
      if(commandlist.size() > 100){
       notSorted = false; 
      }
    }
    return commandlist;
  }
}