require 'spec_helper'
require 'database_cleaner'

describe Course do

	before :each do
		DatabaseCleaner.clean_with :truncation 
		FactoryGirl.reload
	end

	it "has a valid factory" do
		FactoryGirl.create(:course).should be_valid
	end

	it "is invalid without a name" do
		FactoryGirl.build(:course, name: nil).should_not be_valid
	end
end