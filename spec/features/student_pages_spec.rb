require 'rails_helper'

  describe 'Student pages' do
    
  fixtures :students
  subject {page}
  
  describe 'index' do
    before {visit students_path}
    it {should have_content('David')}
    it {should have_content('Steve')}
    it {should have_content('Jane')}
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
        student = students(:david)
        visit "/students/#{student.id}/edit"
        fill_in 'student_first_name', :with => 'John'
        fill_in 'student_last_name', :with => 'Doe'
        fill_in 'student_birth_date', :with => '10-12-1990'
        click_on 'Update Student'
        visit students_path
      end
      it {should have_content('John') }
      it {should_not have_content('David')}
    end
  
end
