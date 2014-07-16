require 'spec_helper'

=begin
describe 'Student pages' do
  
  subject {page}
  
  3.times {FactoryGirl.create(:student)}
  
  describe 'index' do
    before {visit students_path}
    it {should have_content('student1')}
    it {should have_content('student2')}
    it {should have_content('student3')}   
  end
  
  describe 'new' do
    before do
      visit '/students/new'
      fill_in 'student_first_name', :with => 'John'
      fill_in 'student_last_name', :with => 'Doe'
      fill_in 'student_birth_date', :with => '10-12-1990'
      click_on 'Create Student'
      visit students_path
    end
    it {should have_content('John')}  
    end
    
    describe 'edit' do
      before do
        visit '/students/1/edit'
        fill_in 'student_first_name', :with => 'John'
        fill_in 'student_last_name', :with => 'Doe'
        fill_in 'student_birth_date', :with => '10-12-1990'
        click_on 'Update Student'
        visit students_path
      end
      it {should have_content 'John' }
      it {should_not have_content 'student1'}
      after {save_and_open_page}
    end
      
    
end
=end