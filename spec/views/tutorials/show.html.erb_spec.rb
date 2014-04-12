require 'spec_helper'

describe "tutorials/show" do
  before(:each) do
    @tutorial = assign(:tutorial, stub_model(Tutorial,
      :tutorial_name => "Tutorial Name",
      :tutorial_type => "Tutorial Type",
      :tutorial_teacher_name => "MyText",
      :tutorial_discription => "MyText",
      :tutorial_path => "Tutorial Path",
      :category_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tutorial Name/)
    rendered.should match(/Tutorial Type/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/Tutorial Path/)
    rendered.should match(/1/)
  end
end
