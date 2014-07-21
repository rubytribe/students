require 'rails_helper'

  describe 'Student pages' do
    
    fixtures :students, :courses, :enrollments
    
    before {@student = students(:david)}

  
    specify 'index' do
      visit students_path
      expect(page).to have_content('David')
      expect(page).to have_content('Steve')
      expect(page).to have_content('Jane')
    end


    describe 'new' do
      before do
        visit students_path
        click_on 'New Student'
        fill_in 'student_first_name', :with => 'John'
        fill_in 'student_last_name', :with => 'Doe'
        fill_in 'student_birth_date', :with => '1990-10-12'
        click_on 'Create Student'
      end
      
      it 'should list the new student' do
        visit students_path
        expect(page).to have_content('John')
      end
      
      it 'should redirect back to students index' do
        expect(current_path).to eq(students_path)
      end
    end
    
    specify 'edit' do
      visit edit_student_path(@student)
      fill_in 'student_first_name', :with => 'John'
      click_on 'Update Student'
      visit students_path
      expect(page).to have_content('John')
      expect(page).not_to have_content('David')
    end
    
    
    describe 'show' do
      before {visit student_path(@student)}

      
      it "should list the student's name" do
        expect(page).to have_content('David')
      end
      
      it 'should list associated courses' do
        expect(page).to have_content('Mathematics')
        expect(page).to have_content('Computer Science')
      end
      
      describe 'add course for a student' do
        before do
          click_on 'Add course'
          select 'Chemistry', from: 'course_id'
          click_on 'Submit'
        end
        
        it 'should list the new course' do
          visit student_path(@student)
          expect(page).to have_content('Chemistry')
        end
        
        it 'should redirect back to student page' do
          expect(current_path).to eq(student_path(@student))
        end
      end
      
      specify 'remove course from a student' do
        first(:link, 'remove').click
        visit student_path(@student)
        expect(page).not_to have_content('Computer Science')
      end
    end
      
end
