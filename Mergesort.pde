
class Mergesort extends Sort{
  //See sort abstract
  //only swaps the two first places.
  
  ArrayList<Command> commandlist;
  ArrayList<Float> tempFloatListArraylist;
  Mergesort(Blocklist datain){
    super(datain);
    super.commands = generateCommands(datain);
  }
  
  ArrayList<Command> generateCommands(Blocklist datain){ // generates the list of commands. This is where the list will be generated.
    commandlist = new ArrayList<Command>(); // creates the COMMAND list, 
    //commandlist.add(new Command(0,0,3));
    tempFloatListArraylist = super.blocks.getValueList();
    float[] floatarray = generateFloatArray(tempFloatListArraylist);
    System.out.println(printLineArray(floatarray));
    mergesort(floatarray, 0); // initializing the recursive sort command on the float array
    commandlist.add(new Command(0,0,3));
    System.out.println("array" + printLineArray(floatarray));
    System.out.println("Arraylist"+printLineArrayList(tempFloatListArraylist));
    System.out.println(commandlist);
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
   // commandlist.add(new Command(a, b, 1)); //ADDS THE SWAP COMMAND to the command listyo
    temp = array[a];
    array[a] = array[b];
    array[b] = temp; 
  }
  
  float[] arrayGen(int a, int b, float[] arra){
    float[] k = new float[b-a];
    //System.out.println(arra.length);
    //System.out.println(a + " " + b);
    for(int i = a; i < b; i++){
      k[i-a] = arra[i];
    }
    return k;
  }
  
  ArrayList<Float> arrayListGen(int a, int b, ArrayList<Float> array){
        ArrayList<Float> k = new ArrayList<Float>();
    //System.out.println(arra.length);
    //System.out.println(a + " " + b);
    for(int i = a; i < b; i++){
      k.add( array.get(i));
    }
    return k;
  }
  
  void doswap(float a, float b){
    int temp1 = 0;
    int temp2 = 0;
   for(int i = 0; i < tempFloatListArraylist.size(); i++){
     if(tempFloatListArraylist.get(i).equals(a)){
       temp1 = i;
     }
   }
   for(int i = 0; i < tempFloatListArraylist.size(); i++){
     if(tempFloatListArraylist.get(i).equals(b)){
       temp2 = i;
     }
   }
   
   commandlist.add(new Command(temp1, temp2, 6));
   tempFloatListArraylist.set(temp1, b);
     //commandlist.add(new Command(temp1, temp2, 1));
   //while(temp1 != temp2){
   // if(temp1 < temp2){
   //   //commandlist.add(new Command(temp2, temp2 -1, 1));
   //   float temp = tempFloatListArraylist.get(temp1);
   //   tempFloatListArraylist.set(temp1, tempFloatListArraylist.get(temp1+1));
   //   tempFloatListArraylist.set(temp1+1, temp);
   //   temp1++;
   // }
   // if(temp2 < temp1){
   //   //commandlist.add(new Command(temp1, temp1 -1, 1));
   //   float temp = tempFloatListArraylist.get(temp2);
   //   tempFloatListArraylist.set(temp2, tempFloatListArraylist.get(temp2+1));
   //   tempFloatListArraylist.set(temp2+1, temp);
   //   temp2++;
   // }
   //}
  }
 
  void mergesort(float[] array, int instart){
    //System.out.println("Splitting" + printLineArray(array));
    if( array.length > 1){
      //System.out.println(instart);
      int mid = array.length/2;
      float[] arra1 = arrayGen(0,mid,array);
      float[] arra2 = arrayGen(mid, array.length, array);
      
      mergesort(arra1, instart);
      mergesort(arra2, instart+mid);
      
      int i = 0;
      int j = 0;
      int k = 0;
      
      while( i < arra1.length && j < arra2.length){
        if(arra1[i] < arra2[j]){
         
          doswap(array[k], arra1[i]);
          array[k] = arra1[i];
          i++;
        }else{
          
         doswap(array[k], arra2[j]);
         array[k] = arra2[j];
       
         j++;
        }
        k++;
      }
      while(i < arra1.length){
         
         doswap(array[k], arra1[i]);
         array[k]=arra1[i];
         i++;
         k++;
      }
        while( j < arra2.length){
          doswap(array[k], arra2[j]);
          array[k]=arra2[j];
          j++;
          k++;
      }      
    }
  }
  
   
  String printLineArray(float[] indata){ //returns a string of an array
   String k = "";
   for(int i = 0; i < indata.length; i++){
    k += " \t" + indata[i]; 
   }
   return k;
  }
  String printLineArrayList(ArrayList<Float> indata){ // returns a string of an array
   String k = "";
   for(int i = 0; i < indata.size(); i++){
    k += " \t" + indata.get(i); 
   }
   return k;
  }
}