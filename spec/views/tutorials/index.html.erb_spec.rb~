require 'spec_helper'

describe "tutorials/index" do
  before(:each) do
    assign(:tutorials, [
      stub_model(Tutorial,
        :tutorial_name => "Tutorial Name",
        :tutorial_type => "Tutorial Type",
        :tutorial_teacher_name => "MyText",
        :tutorial_discription => "MyText",
        :tutorial_path => "Tutorial Path",
        :category_id => 1
      ),
      stub_model(Tutorial,
        :tutorial_name => "Tutorial Name",
        :tutorial_type => "Tutorial Type",
        :tutorial_teacher_name => "MyText",
        :tutorial_discription => "MyText",
        :tutorial_path => "Tutorial Path",
        :category_id => 1
      )
    ])
  end

  it "renders a list of tutorials" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tutorial Name".to_s, :count => 2
    assert_select "tr>td", :text => "Tutorial Type".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Tutorial Path".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
