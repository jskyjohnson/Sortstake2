
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
    
    mergesort(floatarray); // initializing the recursive sort command on the float array
    
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
  
  void insertto(int a, int b){
    int temp1 = a;
    int temp2 = b;
   if(temp1 < temp2){
    while(temp1 < temp2){
     commandlist.add(new Command(temp2, temp2-1, 1));
     temp2--;
    }
   }
   if(temp2 < temp1){
     while(temp2 < temp1){
     commandlist.add(new Command(temp1, temp1-1, 1));
     temp1--;
    }
   } 
  }
  
  void doswap(float a, float b){ // only for commandlist stuff
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
   if(temp1 < temp2){
    while(temp1 < temp2){
     commandlist.add(new Command(temp2, temp2-1, 1));
     temp2--;
    }
   }
   if(temp2 < temp1){
     while(temp2 < temp1){
     commandlist.add(new Command(temp1, temp1-1, 1));
     temp1--;
    }
   }
  }
  
  float[] array;
  int lengtharray;
  float[] tempMergArr;
   public void mergesort(float inputArr[]) {
        this.array = inputArr;
        this.lengtharray = inputArr.length;
        this.tempMergArr = new float[lengtharray];
        doMergeSort(0, lengtharray - 1);
    }
 
    private void doMergeSort(int lowerIndex, int higherIndex) {
         
        if (lowerIndex < higherIndex) {
            int middle = lowerIndex + (higherIndex - lowerIndex) / 2;
            // Below step sorts the left side of the array
            doMergeSort(lowerIndex, middle);
            // Below step sorts the right side of the array
            doMergeSort(middle + 1, higherIndex);
            // Now merge both sides
            mergeParts(lowerIndex, middle, higherIndex);
        }
    }
 
    void mergeParts(int lowerIndex, int middle, int higherIndex) {
 
        for (int i = lowerIndex; i <= higherIndex; i++) {
            tempMergArr[i] = array[i];
            tempFloatListArraylist.set(i, array[i]);
        }
        int i = lowerIndex;
        int j = middle + 1;
        int k = lowerIndex;
        while (i <= middle && j <= higherIndex) {
            if (tempMergArr[i] <= tempMergArr[j]) {
                //doswap(array[k], tempMergArr[i]);
                insertto(k,i);
                commandlist.add(new Command(k,i,1));
                tempFloatListArraylist.set(k, tempMergArr[i]);
                array[k] = tempMergArr[i];
                i++;
            } else {
               // doswap(array[k], tempMergArr[j]);
                insertto(k,j);
                tempFloatListArraylist.set(k, tempMergArr[j]);
                
                array[k] = tempMergArr[j];
                j++;
            }
            k++;
        }
        while (i <= middle) {
           // doswap(array[k], tempMergArr[i]);
            insertto(k,i);
            tempFloatListArraylist.set(k, tempMergArr[i]);
            array[k] = tempMergArr[i];
            k++;
            i++;
        }
 
    }
  //void mergesort(float[] array, int instart){
  //  //System.out.println("Splitting" + printLineArray(array));
  //  if( array.length > 1){
  //    //System.out.println(instart);
  //    int mid = array.length/2;
  //    float[] arra1 = arrayGen(0,mid,array);
  //    float[] arra2 = arrayGen(mid, array.length, array);
      
  //    mergesort(arra1, instart);
  //    mergesort(arra2, instart+mid);
      
  //    int i = 0;
  //    int j = 0;
  //    int k = 0;
      
  //    while( i < arra1.length && j < arra2.length){
  //      if(arra1[i] < arra2[j]){
         
  //        doswap(array[k], arra1[i], instart);
  //        array[k] = arra1[i];
  //        i++;
  //      }else{
          
  //       doswap(array[k], arra2[j], instart);
  //       array[k] = arra2[j];
       
  //       j++;
  //      }
  //      k++;
  //    }
  //    while(i < arra1.length){
         
  //       doswap(array[k], arra1[i], instart);
  //       array[k]=arra1[i];
  //       i++;
  //       k++;
  //    }
  //      while( j < arra2.length){
  //        doswap(array[k], arra2[j], instart);
  //        array[k]=arra2[j];
  //        j++;
  //        k++;
  //    }      
  //  }
  //}
  
   
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