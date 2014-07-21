require 'rails_helper'

describe Enrollment do
  fixtures :students, :courses, :enrollments
  
  before do
    @student = students(:david)
    @course = courses(:math)
  end
  
  specify 'courses should be unique for a student' do
    visit student_path(@student)
    click_on 'Add course'
    page.all('a', text: 'Add').last.click
    visit student_path(@student)
    expect(page.all('td', text: 'Mathematics').count).to eq(1)
  end
  
  specify 'students should be unique for a course' do
    visit course_path(@course)
    click_on 'Add student'
    first(:link, 'Add').click
    visit course_path(@course)
    expect(page.all('td', text: 'David').count).to eq(1)
  end
  
end
