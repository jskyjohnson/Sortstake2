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
    //commandlist.add(new Command(0, 0, 3));
    ArrayList<Float> tempFloatListArraylist = super.blocks.getValueList();
    float[] floatarray = generateFloatArray(tempFloatListArraylist);
     //System.out.println(printLineArray(floatarray));
     // commandlist.add(new Command(0,1,1));
       swapAllBlocks(floatarray,commandlist);
       System.out.println("Swap Finished");
       System.out.println(commandlist);
    return commandlist;
  }
  
  public void swapAllBlocks(float[] array,ArrayList<Command> commandin) {
    boolean swapMade = true;
    while (swapMade) {
      swapMade = false;
      int index = 0;
      while (index < array.length -1 ) {
        if (array[index] > array[index + 1]) {
          System.out.println(array[index]+" "+array[index+1]);
          float tempValue = array[index];
          commandin.add(new Command(index, index+1, 1));
          array[index] = array[index + 1];
          array[index + 1] = tempValue;
          swapMade = true;
        }
       index ++;
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