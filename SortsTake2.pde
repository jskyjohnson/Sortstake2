//Sorts Take 2

//Objects
Blocklist blocklist;
      //Sort objects
Sort sortobject;
//Boolean checks

//Setup method only run in the begining
void setup(){
 blocklist = new Blocklist();
 sortobject = new Bubblesort();
 
 //Generate blocklist values
 blocklist.generate(10);
 blocklist.shuffleblocks();
 
 
}
//update for non-graphical updates
void update(){
  
}
//Draw, only for graphical updates
void draw(){
  
}