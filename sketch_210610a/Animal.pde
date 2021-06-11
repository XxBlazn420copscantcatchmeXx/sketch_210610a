class Animal extends Entity{
  float movementSpeed;
  PVector direction;
  
  public Animal(int x, int y, Image image, float scale, float movementSpeed, PVector direction){
    super(x, y, image, scale);
    this.movementSpeed = movementSpeed;
    this.direction = direction.normalize();
    if(direction.x < 0){
      flip();
    }
  }
  
  public Animal(Image image, float scale, float movementSpeed, PVector direction){
    super(image, scale);
    this.movementSpeed = movementSpeed;
    this.direction = direction.normalize();
    if(direction.x < 0){
      flip();
    }
  }
    
  public void move(float modifer){
    x += direction.x * movementSpeed * modifer;
    y += direction.y * movementSpeed * modifer;
    
    float centerX = getCenterX();
    float centerY = getCenterY();
    
    if(centerX < 0 || centerX >= width){
      direction.x = -direction.x;
      flip();
    }
    
    if(centerY < 0 || centerY >= height){
      direction.y = -direction.y;
    }
  }
}
