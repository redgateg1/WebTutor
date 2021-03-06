require 'spec_helper'

describe "tutorials/new" do
  before(:each) do
    assign(:tutorial, stub_model(Tutorial,
      :tutorial_name => "MyString",
      :tutorial_discription => "MyText",
      :tutorial_path => "MyString",
    ).as_new_record)
  end

  it "renders new tutorial form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tutorials_path, "post" do
      assert_select "input#tutorial_tutorial_name[name=?]", "tutorial[tutorial_name]"

      assert_select "textarea#tutorial_tutorial_discription[name=?]", "tutorial[tutorial_discription]"

   
    end
  end
end
