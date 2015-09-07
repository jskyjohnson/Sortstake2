//Command Object
//A non-graphical version of the sorts. Sort objects generate a command that tells the SortsMain what to process next graphically

//Enum for command
 enum Type{ // They types of commands a specific command can be
    SWAP, TRASH, MOVEDOWNROW, MOVEUPROW, ADDTOHEAP, ADDTOSTACK, SPLIT, OTHER 
 }
class Command{ //values for a command
  int a;
  int b;
  Type type;
  
  Command(){
   a = 0;
   b = 1;
   type = Type.SWAP;
  }
  Command(int aa, int ab, Type atype){
    a = aa;
    b = ab;
    type = atype;
  }
  String toString(){
   return a +" " + b + " " + type; 
  }
}