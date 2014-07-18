require 'rails_helper'

describe 'Course pages' do
  fixtures :courses
  
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
  
  specify 'edit' do
    course = courses(:math)
    visit edit_course_path(course.id)
    fill_in 'course_name', with: 'Music'
    click_on 'Update Course'
    visit courses_path
    expect(page).to have_content('Music')
    expect(page).not_to have_content('Mathematics')
  end
end
