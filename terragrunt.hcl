terraform {
  source = "./stack"
  
  before_hook "ls" {
    commands     = ["plan"]
    execute      = ["ls", "-la"]
  }
  
  after_hook "ls" {
    commands     = ["plan"]
    execute      = ["ls", "-la"]
  }
}
