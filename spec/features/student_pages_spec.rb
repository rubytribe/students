require 'rails_helper'

  describe 'Student pages' do
    
    fixtures :students
  
    specify 'index' do
      visit students_path
      expect(page).to have_content('David')
      expect(page).to have_content('Steve')
      expect(page).to have_content('Jane')
    end



    specify 'new' do
      visit new_student_path
      fill_in 'student_first_name', :with => 'John'
      fill_in 'student_last_name', :with => 'Doe'
      fill_in 'student_birth_date', :with => '1990-10-12'
      click_on 'Create Student'
      visit students_path
      expect(page).to have_content('John')
    end
    
    specify 'edit' do
      student = students(:david)
      visit edit_student_path(student.id)
      fill_in 'student_first_name', :with => 'John'
      click_on 'Update Student'
      visit students_path
      expect(page).to have_content('John')
      expect(page).not_to have_content('David')
    end
    
  
end
