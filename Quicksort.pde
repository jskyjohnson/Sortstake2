
class Quicksort extends Sort{
  //See sort abstract
  //only swaps the two first places.
  
  ArrayList<Command> commandlist;
  Quicksort(Blocklist datain){
    super(datain);
    super.commands = generateCommands(datain);
  }
  
  ArrayList<Command> generateCommands(Blocklist datain){ // generates the list of commands. This is where the list will be generated.
    commandlist = new ArrayList<Command>(); // creates the COMMAND list, 
    ArrayList<Float> tempFloatListArraylist = super.blocks.getValueList();
    float[] floatarray = generateFloatArray(tempFloatListArraylist);
    quickSort(floatarray ,0, blocks.getSize() -1); // initializing the recursive sort command on the float array
    return commandlist;
  }
  
  float[] generateFloatArray(ArrayList<Float> indata){ // turns a bunch of floats in an arraylist into a bunch of floats in an array
   float[] newArray = new float[indata.size()];
   for(int i = 0; i < indata.size(); i ++){
     newArray[i] = indata.get(i);
   }
   return newArray;
  }
  
  void swap(int a, int b, float[] array){ // a method to swap two values in an array
    float temp = 0.0;
    commandlist.add(new Command(a, b, 1)); //ADDS THE SWAP COMMAND to the command listyo
    temp = array[a];
    array[a] = array[b];
    array[b] = temp; 
  }
  
  void quickSort(float[] arra,int left, int right){//quick sort algorithm initial
  if(left < right){
     int index = partition( arra,left, right);
    // commandlist.add(new Command(index, 2));
     quickSort(arra, left, index -1);
     quickSort(arra, index+1, right);
    }
  }
  
  int partition( float[] arra,int left, int right){ // parition method of the quicksort style algorithm
    int m = (left + right) / 2;
    swap(left, m, arra);
    float pivot = arra[left];
    int lo = left + 1;
    int hi = right;
    while(lo <= hi){
     while(arra[hi] > pivot){
      hi --; 
     }
     while(lo <= hi && arra[lo] <= pivot){
      lo++; 
     }
     if(lo <= hi){
      swap(lo, hi, arra);
      lo++;
      hi--;
      }
    }
    swap(left, hi, arra);
    return hi;
  }
}