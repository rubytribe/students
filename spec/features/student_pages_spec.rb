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
      visit '/students/new'
      fill_in 'student_first_name', :with => 'John'
      fill_in 'student_last_name', :with => 'Doe'
      select '10', from: "student_birth_date_3i"
      select 'November', from: "student_birth_date_2i"
      select '1990', from: "student_birth_date_1i"
      click_on 'Create Student'
      visit students_path
      expect(page).to have_content('John')
    end
    
    specify 'edit' do
      student = students(:david)
      visit "/students/#{student.id}/edit"
      fill_in 'student_first_name', :with => 'John'
      click_on 'Update Student'
      visit students_path
      expect(page).to have_content('John')
      expect(page).not_to have_content('David')
    end
    
  
end
