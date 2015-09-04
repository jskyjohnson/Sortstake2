//Object to hold block objects

class Blocklist{
 ArrayList<Block> blocks; //Arraylist that actually holds the blocks

 boolean canmove;  //booleans of Blocklist
 
 
 Blocklist(){ //Constructor default 
   blocks = new ArrayList<Block>(); //creates new arraylist of blocks
   canmove = true;
 }
 //update and graphicalupdate shouldn't need much more changes
 
 void update(){ //update Method for non-graphical updates
   //goes through each individual block and updates
   for(Block thisblock : blocks){
    thisblock.update(); 
   }
 }

 void graphicalupdate(){  //graphicalupdate for graphical updates, but will actually be drawn in the main sortstake2
   for(Block thisblock : blocks){
    thisblock.graphicalupdate(); 
   }
 }
 
 //getMethods SHOULD NOT EDIT ANYTHING
 
 boolean getCanSwap(int a, int b){ //Checks if two blocks can be swapped
   return false;
 }
 
 boolean getAllCanMove(){ //checks if all the blocks are not moving
   return false;
 }
 
 int getSize(){ //returns size of the block arraylist
   return 0;
 }
 
 Block getBlock(int a){ //returns block at A
   return new Block();
 }
 
 ArrayList<Block> getBlocklist(){ //returns arraylist of blocks
  return blocks; 
 }
 //editing methods, these methods will change that actual values in the arraylist THESE ACTUALLY CHANGE VALUES

 void generate(int a){  //generate generates the list at a certain size a
   for(int i = 0; i < a; i++){
     this.addBlock(new Block(i*(((MOVEABLESIZEY) - PADDINGX)/a),MOVEABLESIZEY-(PADDINGY),((MOVEABLESIZEY) - PADDINGX)/a, -1*(((((MOVEABLESIZEY) - PADDINGY)-10)/a) + ((((MOVEABLESIZEY) - PADDINGY)-10)/(a-1))*i)));
   }
 }

 void addBlock(Block blocktoadd){  //Adds a new block to this list
  blocks.add(blocktoadd); 
 }

 void swapblock(){  //swapblock will swap two blocks
   
 }

 void duelHeap(){  //changes layout to have two arraylists at the same time
   
 }
 
 void shuffleblocks(){ //shuffleblocks should randomly shuffle the blocks
   
 }
 
 
}