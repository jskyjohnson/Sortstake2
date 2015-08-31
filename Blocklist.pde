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
 
 //update Method for non-graphical updates
 void update(){
   //goes through each individual block and updates
   for(Block thisblock : blocks){
    thisblock.update(); 
   }
 }
 
 //graphicalupdate for graphical updates, but will actually be drawn in the main sortstake2
 void graphicalupdate(){
   
 }
 
}