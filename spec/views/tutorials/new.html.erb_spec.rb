require 'spec_helper'

describe "tutorials/new" do
  before(:each) do
    assign(:tutorial, stub_model(Tutorial,
      :tutorial_name => "MyString",
      :tutorial_type => "MyString",
      :tutorial_teacher_name => "MyText",
      :tutorial_discription => "MyText",
      :tutorial_path => "MyString",
      :category_id => 1
    ).as_new_record)
  end

  it "renders new tutorial form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tutorials_path, "post" do
      assert_select "input#tutorial_tutorial_name[name=?]", "tutorial[tutorial_name]"
      assert_select "input#tutorial_tutorial_type[name=?]", "tutorial[tutorial_type]"
      assert_select "textarea#tutorial_tutorial_teacher_name[name=?]", "tutorial[tutorial_teacher_name]"
      assert_select "textarea#tutorial_tutorial_discription[name=?]", "tutorial[tutorial_discription]"
      assert_select "input#tutorial_tutorial_path[name=?]", "tutorial[tutorial_path]"
      assert_select "input#tutorial_category_id[name=?]", "tutorial[category_id]"
    end
  end
end
