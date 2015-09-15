
class Mergesort extends Sort{
  //See sort abstract
  //only swaps the two first places.
  
  ArrayList<Command> commandlist;
  Mergesort(Blocklist datain){
    super(datain);
    super.commands = generateCommands(datain);
  }
  
  ArrayList<Command> generateCommands(Blocklist datain){ // generates the list of commands. This is where the list will be generated.
    commandlist = new ArrayList<Command>(); // creates the COMMAND list, 
    ArrayList<Float> tempFloatListArraylist = super.blocks.getValueList();
    float[] floatarray = generateFloatArray(tempFloatListArraylist);
    mergesort(floatarray); // initializing the recursive sort command on the float array
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
  
  float[] arrayGen(int a, int b, float[] arra){
    float[] k = new float[b-a];
    System.out.println(arra.length);
    System.out.println(a + " " + b);
    for(int i = a; i < b; i++){
      k[i-a] = arra[i];
    }
    return k;
  }
  
  void mergesort(float[] array){
    System.out.println("Splitting" + printLineArray(array));
    if( array.length > 1){
      int mid = array.length/2;
      float[] arra1 =this.arrayGen(0,mid,array);
      float[] arra2 = arrayGen(mid, array.length, array);
      
      mergesort(arra1);
      mergesort(arra2);
      
      int i = 0;
      int j = 0;
      int k = 0;
      
      while( i < arra1.length && j < arra2.length){
        if(arra1[i] < arra2[j]){
          //COMMANDLIST ADD HERE
          array[k] = arra1[i];
          i++;
        }else{
          //COMMAND LIST ADD HERE
         array[k] = arra2[j];
         j++;
        }
        k++;
      }
      while(i < arra1.length){
            array[k]=arra1[i];
            i++;
            k++;
      }
        while( j < arra2.length){
            array[k]=arra2[j];
            j++;
            k++;
            System.out.println("Merging "+printLineArray(array));
        }
      
    }
  }
  
   
  String printLineArray(float[] indata){ // returns a string of an array
   String k = "";
   for(int i = 0; i < indata.length; i++){
    k += " " + indata[i]; 
   }
   return k;
  }
}