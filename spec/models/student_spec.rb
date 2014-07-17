require 'spec_helper'

describe "Student" do
  
  before do
     @student = Student.new(last_name: "Pop", first_name: "Ion", birth_date: "1990-12-12")
     @student.save!
  end
    
  subject { @student }
  
  it { should be_valid }
  
  describe "last_name is empty" do
    before {@student.last_name = ''}         
    it { should_not be_valid }
  end
  
  describe "first_name is empty" do
    before { @student.first_name = '' }
    it {should_not be_valid}
  end
  
  describe "birth_date is empty" do
    before { @student.birth_date = '' }
    it {should_not be_valid}
  end
  
  describe "when name is too long" do
    before { @student.last_name = "a" * 51 }
    it { should_not be_valid }
  end
  
  describe "when birth_date has the wrong format" do
    before { @student.birth_date = "2014:07:17" }
    it { should_not be_valid }
  end
  
end
