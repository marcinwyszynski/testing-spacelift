terraform {
  source = "./stack"
  
  before_hook "ls" {
    commands     = ["init", "plan", "show"]
    execute      = ["ls", "-la"]
  }
  
  before_hook "pwd" {
    commands     = ["init", "plan", "show"]
    execute      = ["pwd"]
  }
  
  after_hook "ls" {
    commands     = ["init", "plan", "show"]
    execute      = ["ls", "-la"]
  }
  
  after_hook "pwd" {
    commands     = ["init", "plan", "show"]
    execute      = ["pwd"]
  }
}
