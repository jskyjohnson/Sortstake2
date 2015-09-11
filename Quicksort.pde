
class Quicksort extends Sort{
  //See sort abstract
  //only swaps the two first places.
  public ArrayList<Float> tempFloatList = super.blocks.getValueList();
  ArrayList<Command> commandlist;
  Quicksort(Blocklist datain){
    super(datain);
    super.commands = generateCommands(datain);
  }
  
  ArrayList<Command> generateCommands(Blocklist datain){ // generates the list of commands. This is where the list will be generated.
    commandlist = new ArrayList<Command>();
    quickSort(0, blocks.getSize() -1); 
    return commandlist;
}

  void quickSort(int left, int right){
   int index = partition( left, right);
   if(tempFloatList.get(left) < tempFloatList.get(index -1)){
    quickSort(left,index - 1);
   }
   if(tempFloatList.get(index) < tempFloatList.get(right)){
    quickSort(index, right); 
   }
  }

  int partition( int left, int right){
    
    int leftindex = left;
    int rightindex = right;
    float temp;
    int pivot = (left+right)/2;
    System.out.println("What");
    while(leftindex <= rightindex){
      System.out.println("Whileing");
     while(tempFloatList.get(leftindex) < tempFloatList.get(pivot)){
      leftindex++; 
     }
     while(tempFloatList.get(rightindex) > tempFloatList.get(pivot)){
      rightindex--; 
     }
     if(tempFloatList.get(leftindex)<=tempFloatList.get(rightindex)){
       
       System.out.println("BLAH BLAH BLAH");
       temp = tempFloatList.get(leftindex);
       tempFloatList.set( leftindex, tempFloatList.get(rightindex));
       tempFloatList.set(rightindex, temp);
       commandlist.add(new Command(leftindex, rightindex, 1));
       leftindex++;
       rightindex--;
       
     }
    };
    if(leftindex<0){
     System.out.println("leftindex less than 0");
     
    }
    return pivot;
  }
}