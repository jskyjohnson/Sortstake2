  //Sorts Take 2

//Objects
Blocklist blocklist;
      
Sort sortobject; //Sort objects

//Universal Values
int SIZEX = 500;
int SIZEY = 500;
float MOVEABLESIZEX; //Areas that blocks can be drawn in
float MOVEABLESIZEY; //Area that blocks can be drawn in
float PADDINGX = 50; // Padding around True area, and drawable area
float PADDINGY = 50;
//Boolean checks


//Setup method only run in the begining
void setup(){
  //Basic UI menu Defaults
  size(500,500);
  
  MOVEABLESIZEX = SIZEX - PADDINGX;
  MOVEABLESIZEY = SIZEY - PADDINGY;
  
 blocklist = new Blocklist();
 sortobject = new Bubblesort(blocklist);
 
 blocklist.generate(20);  //Generate blocklist values 
 blocklist.shuffleblocks(); //Shuffles block list to be random
 
}
//Default Methods, SHOULD NOT BE CHANGED MUCH
void update(){ //update for non-graphical updates, THIS SHOULD NOT BE CHANGED MUCH
  sortobject.update();
  blocklist.update();
}

void draw(){ //Draw, only for graphical updates, THIS SHOULD NOT BE CHANGED MUCH
  clear();
  update();
  background(#AAAAAA);
  pushMatrix();
    translate(PADDINGX, PADDINGY);
    blocklist.graphicalupdate();
  popMatrix();
}
//TEST METHODS
void mouseClicked(){ // testing something everytime a mouse is clicked
  blocklist.swapblock(1,2);
  //System.out.println("MOUSE CLICKED");
}