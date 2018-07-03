require('rspec')
require('riddles')

describe('#riddles') do
  it ("What is") do
    riddle = Riddle.new("sleep")
    # riddle = Riddle.new("sleep", "time")
  expect(riddle.riddle_method).to(eq("You shall PASS!"))
  end
  # it ("what is the sweetest thing? Rich or poor, refreshing, and one would die without its sweet embrace") do
  #   riddle = Riddle.new("sleep", "time")
  # expect(riddle.riddle_method).to(eq("You shall PASS!"))
  # end
  # it ("What is the most precious resource? Non-renewable, limitless but finite in a lifetime, everyone dreams to do with this as they please") do
  #   riddle = Riddle.new("sleep", "time")
  # expect(riddle.riddle_method).to(eq("You shall PASS!"))
  # end
  it("increments an id by 1 each time a new item is added") do
    riddle = Riddle.new("sleep")
    riddle.save()
    expect(riddle.id()).to(eq(1))
  end
      it("finds an item based on its id") do
        riddle = Riddle.new("sleep")
        riddle.save()
        expect(Riddle.find(1)).to(eq(item))
      end
end
