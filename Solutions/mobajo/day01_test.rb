require "minitest/autorun"
require_relative 'day01'

describe Day01 do
  let(:app) { Day01.new } 
  it "works with the first example" do 
    assert_equal 3, app.calculate(1122)
  end

  it "works with the second example" do 
    assert_equal 4, app.calculate(1111)
  end

  it "works with the third example" do 
    assert_equal 0, app.calculate(1234)
  end

  it "works with the fourth example" do 
    assert_equal 9, app.calculate(91212129)
  end
end