require 'spec_helper'

describe "students/edit" do
  before(:each) do
    @student = assign(:student, stub_model(Student,
      :last_name => "MyString",
      :first_name => "MyString"
    ))
  end

  it "renders the edit student form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", student_path(@student), "post" do
      assert_select "input#student_last_name[name=?]", "student[last_name]"
      assert_select "input#student_first_name[name=?]", "student[first_name]"
    end
  end
end
