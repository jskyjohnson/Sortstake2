class Bubblesort extends Sort{
  //See sort abstract
  //only swaps the two first places.
  ArrayList<Command> commandlist;
  Bubblesort(Blocklist datain){
    super(datain);
    super.commands = generateCommands(datain);
    System.out.println(super.commands);
    commandlist = new ArrayList<Command>();
    
  }
  
  ArrayList<Command> generateCommands(Blocklist datain){ // generates the list of commands. This is where the list will be generated.
    ArrayList<Command> commandlist = new ArrayList<Command>();
    boolean notSorted = true;
    while(notSorted){
     // commandlist.add(new Command(0,1,1));
      if(commandlist.size() > 10){
       ArrayList<Float> tempFloatListArraylist = super.blocks.getValueList();
       float[] floatarray = generateFloatArray(tempFloatListArraylist);
      }
    }
    return commandlist;
  }
  
  public void swapAllBlocks(float[] array) {
    boolean swapMade = true;
    while (swapMade) {
      swapMade = false;
      int index = 0;
      while (index < array.length) {
        if (array[index] > array[index + 1]) {
          float tempValue = array[index];
          commandlist.add(new Command(index, index+1, 1));
          array[index] = array[index + 1];
          array[index + 1] = tempValue;
          swapMade = true;
        }
      }
    }
  }
  
  float[] generateFloatArray(ArrayList<Float> indata){ // turns a bunch of floats in an arraylist into a bunch of floats in an array
   float[] newArray = new float[indata.size()];
   for(int i = 0; i < indata.size(); i ++){
     newArray[i] = indata.get(i);
   }
   return newArray;
  }
}