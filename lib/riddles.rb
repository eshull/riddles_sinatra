class Riddle
  def initialize(first, second)
    @riddle_one = first
    @riddle_two = second
  end
  def riddle_method
    if @riddle_one == "sleep" && @riddle_two == "time"
      "You shall PASS!"
    else
      "You have FAILED!"
    end
  end
end
