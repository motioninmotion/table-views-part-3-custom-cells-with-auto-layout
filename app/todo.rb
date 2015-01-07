class Todo
  def self.all
    [
      Todo.new("Do the dishes", "Need dish washing liquid"),
      Todo.new("Hang out the washing", "Get some softener"),
      Todo.new("Learn about Table Views", "Sign up for MotionInMotion")
    ]
  end

  def self.count
    self.all.count
  end

  attr_accessor :text, :notes

  def initialize(text, notes)
    @text, @notes = text, notes
  end
end
