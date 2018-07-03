class Riddle
  @@list = []
  attr_reader :id
  attr_accessor :answer

  def initialize(answer)
    @answer = answer
    @id = @@list.length + 1
  end
  def self.find(id)
   item_id = id.to_i()
   @@list.each do |item|
     if item.id == item_id
       return item
     end
   end
 end
  def riddle_method
    if @answer == "sleep"
      "You shall PASS!"
    else
      "You have FAILED!"
    end
  end
end
