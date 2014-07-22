require 'spec_helper'
require 'database_cleaner'
require 'rails_helper'

describe 'Student pages' do
	include Rails.application.routes.url_helpers
	before :each do
		@stud = FactoryGirl.create(:student, first_name: "Cata" , last_name: "Mihai", birth_date: "1995-11-10", email: "catalinMihai12345@gmail.com")
		DatabaseCleaner.clean_with :truncation 
		FactoryGirl.reload
		
	end
	specify 'index' do
		
		visit studs_path
		click_on 'Add student'
  	fill_in 'First name', with: "Alex"
 		fill_in 'Last name', with: "Catalin"
 		#fill_in 'Birth', with: '1994-07-15'
 		#fill_in 'Birth date[issued_date]', with: "2013-05-02"
  	fill_in 'Email', with: "catalin@gmail.com"
  
  	click_on 'Save'
  	expect(page).to have_content("Alex")
  	expect(page).to have_content("Catalin")
  	expect(page).to have_content("")
	end


	specify 'edit' do
      visit edit_stud_path(@stud)
      fill_in 'student_first_name', :with => 'John'
      click_on 'Update Student'
      visit students_path
      expect(page).to have_content('John')
      expect(page).not_to have_content('Mihai')
    end
end