require 'spec_helper'

describe "Page: List of Students" do

  subject { page }
  
  describe "index" do
    let(:student) { FactoryGirl.create(:student) }
    before(:each) do
      visit students_path
    end

    it { should have_content('List of Students') }    
  end
  
end
