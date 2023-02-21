int clock = 0; 

void setup(){
  fullScreen();
  //noStroke();
  strokeWeight(0.1);
  background(255, 0, 0);
  
}

void draw(){
  

      if(clock >= 250){
        background(255); 
        dice();
        clock = 0; 
      }
      
  clock++;
  print(clock); 
  }
  



void dice(){
  
   Grid[] grids = new Grid[100]; 
  
  for(int i = 0; i < 10; i++){
    for(int j = 0; j < 10; j++){
        grids[j] = new Grid(i * 60 + width/3, j * 60 + height/4);
        grids[j].update();
    
    }
    
  }
  
}

  class Grid{
    
    float xpos, ypos; 
    
    Grid(float x, float y ){
       xpos = x; 
       ypos = y; 

      
    }
    
    
    int[] rna = new int[16];
    int[] rna_ = new int[16];
    
    void update(){
    
    for(int i = 0; i < 16; i++){
      
      rna[i] = int(random(2)); 
      rna_[i] = rna[i];
    }
    
    int sum = 0; 
    for(int i = 0; i < 16; i++){
      sum += rna_[i];
    }
    
    
    int index = 0; 

    
    for(int i = 0; i < 4; i++){
      
      for( int j = 0; j < 4; j++){
       
        if(rna[index] > 0){
          
          if(sum > 12){
            fill(229, 204, 255);
          } else if (sum <= 3){
            fill(250, 200, 0);
          } else {
            fill(255);
          }
          
        } else {
          
          
            
          fill(200);
          
        }
      
    
        
        rect(i * 13 + xpos, j * 13 + ypos, 12, 12);
        
        index++;
      }
    }
  }
}
