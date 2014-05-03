require 'spec_helper'

describe "comments/new" do
  before(:each) do
    assign(:comment, stub_model(Comment,
      :body => "MyText",
      :tutorial_id => 1
    ).as_new_record)
  end

  it "renders new comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", comments_path, "post" do
      assert_select "textarea#comment_body[name=?]", "comment[body]"
      assert_select "input#comment_tutorial_id[name=?]", "comment[tutorial_id]"
    end
  end
end
