require 'rails_helper'

describe 'Course pages' do
  fixtures :courses, :enrollments
  
  before {@course = courses(:math)}
  subject {page}
  
  specify 'index' do
    visit courses_path
    expect(page).to have_content('Mathematics')
    expect(page).to have_content('Computer Science')
    expect(page).to have_content('Chemistry')
  end
  
  specify 'new' do
    visit new_course_path
    fill_in 'course_name', with: 'Literature'
    click_on 'Create Course'
    visit courses_path
    expect(page).to have_content('Literature')
  end
  
  describe 'edit' do
    before do
      visit course_path(@course)
      click_on 'edit'
      fill_in 'course_name', with: 'Music'
      click_on 'Update Course'
    end
    
    it 'should list the new course' do
      visit courses_path
      expect(page).to have_content('Music')
      expect(page).not_to have_content('Mathematics')
    end
    
    it 'should redirect back to course page' do
      expect(current_path).to eq(course_path(@course))
    end  
  end

  
  describe 'show' do
    before {visit course_path(@course)}
    
    it "should list the course's name" do
      expect(page).to have_content('Mathematics')
    end
    
    it 'should list enrolled students' do
      expect(page).to have_content('David')
    end
    
    
    describe 'add student to a course' do
      before do
        click_on 'Add student'
        select 'Jane Peterson', from: 'student_id'
        click_on 'Submit'
      end
      
      it 'should list the student' do
        visit course_path(@course)
        expect(page).to have_content('Jane')
      end
      
      it 'should redirect back to course page' do
        expect(current_path).to eq(course_path(@course))
      end
    end
    
    specify 'remove student from a course' do
      first(:link, 'remove').click
      visit course_path(@course)
      expect(page).not_to have_content('David')
    end

  end
  
end
