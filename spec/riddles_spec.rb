require('rspec')
require('riddles')

describe('#riddles') do
  it ("what is the sweetest thing? Rich or poor, refreshing, and one would die without its sweet embrace") do
    riddle = Riddle.new("sleep", "time")
  expect(riddle.riddle_method).to(eq("You shall PASS!"))
  end
  it ("What is the most precious resource? Non-renewable, limitless but finite in a lifetime, everyone dreams to do with this as they please") do
    riddle = Riddle.new("sleep", "time")
  expect(riddle.riddle_method).to(eq("You shall PASS!"))
  end
end
