require 'rails_helper'

describe Course do
  fixtures :courses
  before {@course = courses(:math)}
  subject {@course}
  
  it {should respond_to(:name)}
  it {should be_valid}
  

  specify 'when name is not present' do
    @course.name = ''
    expect(@course).not_to be_valid
  end
  
end