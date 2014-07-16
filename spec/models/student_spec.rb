# refactor and add fixtures

require 'rails_helper'


describe Student do
  before {@student = Student.new(first_name: 'John', last_name: 'Doe', birth_date: '1990-10-12')}
  
  subject {@student}
  
  it {should respond_to(:first_name)}
  it {should respond_to(:last_name)}
  it {should respond_to(:birth_date)}
  
  it {should be_valid}
  
  describe 'when first name is not present' do
    before {@student.first_name = ''}
    it {should_not be_valid}
  end
  
  describe 'when last name is not present' do
    before {@student.last_name = ''}
    it {should_not be_valid}
  end
  
  describe 'when birth_date is not present' do
    before {@student.birth_date = ''}
    it {should_not be_valid}
  end
  
end