class Entity{
  int x;
  int y;
  Image image;
  float scale;
  boolean flipped = false;
  
  public Entity(int x, int y, Image image, float scale){
    this.x = x;
    this.y = y;
    this.image = image;
    this.scale = scale;
  }
  
  public Entity(Image image, float scale){
    this.image = image;
    this.scale = scale;
    this.x = (int)(mouseX - getWidth()/2);
    this.y = (int)(mouseY - getHeight()/2);
  }
  
  public float getWidth(){
   return image.getImage().width*scale; 
  }
  
  public float getHeight(){
   return image.getImage().height*scale; 
  }
  
  public float getCenterX(){
    return x + getWidth()/2;
  }
  
  public float getCenterY(){
    return y + getHeight()/2;
  }
  
  public boolean isColliding(int x, int y){
    return this.x <= x && x < this.x+getWidth() && this.y <= y && y < this.y+getHeight();
  }
  
  public void flip(){
    flipped = !flipped;
  }
  
  void draw(){
    if(flipped){
      float w = getWidth();
      float h = getHeight();
      pushMatrix();
      scale(-1.0, 1.0); 
      image(image.getImage(), -x, y, -getWidth(), getHeight());
      popMatrix();
    }
    else{
      image(image.getImage(), x, y, getWidth(), getHeight());
    }
  }
}
