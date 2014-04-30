require 'spec_helper'

describe "tutorials/index" do
  before(:each) do
    assign(:tutorials, [
      stub_model(Tutorial,
        :tutorial_name => "Tutorial Name",

        :tutorial_discription => "MyTextw",
  
      ),
      stub_model(Tutorial,
        :tutorial_name => "Tutorial Name",

        :tutorial_discription => "MyTextw",

      )
    ])
  end

  it "renders a list of tutorials" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tutorial Name".to_s, :count => 2

    assert_select "tr>td", :text => "MyTextw".to_s, :count => 2


  end
end
