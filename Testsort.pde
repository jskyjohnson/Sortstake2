class Testsort extends Sort{
  //See sort abstract
  //only swaps the two first places.
   
  Testsort(Blocklist datain){
    super(datain);
    super.commands = generateCommands(datain);
  }
  
  ArrayList<Command> generateCommands(Blocklist datain){ // generates the list of commands. This is where the list will be generated.
    ArrayList<Command> commandlist = new ArrayList<Command>();
    boolean notSorted = true;
    while(notSorted){
      commandlist.add(new Command(0,1,1));
      if(commandlist.size() > 10){
       notSorted = false; 
      }
    }
    return commandlist;
  }
  
}