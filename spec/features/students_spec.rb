require 'spec_helper'
require 'rails_helper'

describe "Students" do

  describe "Home page" do

    it "should have the content 'Listing students'" do
      visit '/students'
      expect(page).to have_content('Listing students')
    end
  end

  describe "New student" do
  	it "should have the content 'New student'" do
      visit '/students/new'
      expect(page).to have_content('New student')
    end
  end

  
end