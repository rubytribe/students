require 'rails_helper'


describe Student do
  fixtures :students
  before {@student = Student.first}
  
  subject {@student}
  
  it {should respond_to(:first_name)}
  it {should respond_to(:last_name)}
  it {should respond_to(:birth_date)}
  
  it {should be_valid}
  
  
  describe 'validation' do
    specify 'when first name is not present' do
      @student.first_name = ''
      expect(@student).not_to be_valid
    end
  
    specify 'when last name is not present' do
      @student.last_name = ''
      expect(@student).not_to be_valid
    end
  
    specify 'when birth_date is not present' do
      @student.birth_date = ''
      expect(@student).not_to be_valid
    end
    
    specify 'when birth date is invaild' do
      @student.birth_date = 'abcd'
      expect(@student).not_to be_valid
    end
    
    specify 'when birth date is in future' do
      @student.birth_date = Date.new(Date.today.year + 1)
      expect(@student).not_to be_valid
    end
  end
end