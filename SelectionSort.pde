class SelectionSort extends Sort{
  //See sort abstract
  //only swaps the two first places.
  ArrayList<Command> commandlist;
  SelectionSort(Blocklist datain){
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
       System.out.println(printLineArray(floatarray));
       selectionSort(floatarray, commandlist);
       System.out.println(printLineArray(floatarray));
       System.out.println("Swap Finished");
       System.out.println(commandlist);
    return commandlist;
  }
  
  public void selectionSort(float[] array,ArrayList<Command> commandin) {
  int minSorted = 0;
    while (minSorted < array.length) {
      float lowestVal = array[minSorted];
      int lowestValI = minSorted;
      for (int i = minSorted; i < array.length; i ++) {
         if (array[i] < lowestVal) {
           //commandin.add(new Command(i, 0, 1));
           lowestVal = array[i];
           lowestValI = i;
         }
      }
      if (lowestValI != minSorted) {
        float tempBlock = array[minSorted];
        
        array[minSorted] = array[lowestValI];
        array[lowestValI] = tempBlock;
        commandin.add(new Command(minSorted, lowestValI, 1));
      }
      minSorted ++;
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