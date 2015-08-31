//Object to hold block objects

class Blocklist{
 //Arraylist that actually holds the blocks
 ArrayList<Block> blocks;
 //booleans of Blocklsit
 boolean canmove;
 
 //Constructor
 Blocklist(){
   //creates new arraylist of blocks
   blocks = new ArrayList<Block>();
   canmove = true;
 }
 //update and graphicalupdate shouldn't need much more changes
 //update Method for non-graphical updates
 void update(){
   //goes through each individual block and updates
   for(Block thisblock : blocks){
    thisblock.update(); 
   }
 }
 
 //graphicalupdate for graphical updates, but will actually be drawn in the main sortstake2
 void graphicalupdate(){
   for(Block thisblock : blocks){
    thisblock.graphicalupdate(); 
   }
 }
 //getMethods
 //Checks if two blocks can be swapped
 boolean getCanSwap(int a, int b){
   return false;
 }
 //checks if all the blocks are not moving
 boolean getAllCanMove(){
   return false;
 }
 //returns size of the block arraylist
 int getSize(){
   return 0;
 }
 //returns block at A
 Block getBlock(int a){
   return new Block();
 }
 //returns arraylist of blocks
 ArrayList<Block> getBlocklist(){
  return blocks; 
 }
 //editing methods, these methods will change that actual values in the arraylist
 //swapblock will swap two blocks
 void swapblock(){
   
 }
 //changes layout to have two arraylists at the same time
 void duelHeap(){
   
 }
 //shuffleblocks should randomly shuffle the blocks
 void shuffleblocks(){
   
 }
 
 
}