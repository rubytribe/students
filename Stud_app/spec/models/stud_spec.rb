require 'spec_helper'
require 'database_cleaner'

describe Stud do

	before :each do
		DatabaseCleaner.clean_with :truncation 
		FactoryGirl.reload
	end

	it "has a valid factory" do
		FactoryGirl.create(:stud).should be_valid
	end

	it "is invalid without a firstname" do
		FactoryGirl.build(:stud, first_name: nil).should_not be_valid 
	end

	it "is invalid without a lastname" do
		FactoryGirl.build(:stud, last_name: nil).should_not be_valid
	end

	it "is invalid without a email" do
		FactoryGirl.build(:stud, email: nil).should_not be_valid
	end

	it "is invalid without a birthdate" do
		FactoryGirl.build(:stud, birth_date: nil).should_not be_valid
	end


	it "does not allow duplicate email" do 
		FactoryGirl.create(:stud, first_name: "Alex" , last_name: "Andrei", birth_date: "1995-12-10", email: "catalin12345@gmail.com").should be_valid
		FactoryGirl.build(:stud, first_name: "Alex1" , last_name: "Andrei1", birth_date: "1994-12-10", email: "catalin12345@gmail.com").should_not be_valid 
	end
end