require 'rails_helper'

describe Course do 
  before {@course = Course.new(name: "Numeric Calculus")}

  subject {@course}

  it {should respond_to(:name)}
  it {should be_valid}
  
  describe "Name not present" do
    before{@course.name = ''}
    it {should_not be_valid}
  end
end