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
   if(blocks.get(a).canBeMoved && blocks.get(b).canBeMoved){
     return true;
   }
   return false;
 }
 
 boolean getAllCanMove(){ //checks if all the blocks are not moving
   return false;
 }
 
 int getSize(){ //returns size of the block arraylist
   return blocks.size();
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

 boolean swapblock(int a, int b){  //swapblock will swap two blocks
   if(getCanSwap(a,b)){
     Block tempblock = blocks.get(a);
     blocks.get(a).setNewPosition(blocks.get(b).getX());
     blocks.get(b).setNewPosition(tempblock.getX());
     Block temp = blocks.get(a);
     blocks.set(a, blocks.get(b));
     blocks.set(b, temp);
     return true;
   }
   return false;
   //System.out.println("SWAP BLOCKS");
 }

 void duelHeap(){  //changes layout to have two arraylists at the same time
   
 }
 
 void shuffleblocks(){ //shuffleblocks should randomly shuffle the blocks
   for(int i = 0; i < blocks.size(); i++){
     int index = (int)random(blocks.size());
     float tempx1 = blocks.get(index).getX();
     blocks.get(index).setX(blocks.get(i).getX());
     blocks.get(index).setPosition(blocks.get(i).getX());
     blocks.get(i).setX(tempx1);
     blocks.get(i).setPosition(tempx1);
     Block temp = blocks.get(index);
     blocks.set(index, blocks.get(i));
     blocks.set(i, temp);
   }
 }
 
 
}