require 'spec_helper'

describe "tutorials/edit" do
  before(:each) do
    @tutorial = assign(:tutorial, stub_model(Tutorial,
      :tutorial_name => "MyString",

      :tutorial_discription => "MyText",

    ))
  end

  it "renders the edit tutorial form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tutorial_path(@tutorial), "post" do
      assert_select "input#tutorial_tutorial_name[name=?]", "tutorial[tutorial_name]"

      assert_select "textarea#tutorial_tutorial_discription[name=?]", "tutorial[tutorial_discription]"

    end
  end
end
