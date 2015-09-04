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
}