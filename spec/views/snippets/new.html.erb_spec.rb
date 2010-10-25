require 'spec_helper'

describe "snippets/new.html.erb" do
  before(:each) do
    assign(:snippet, stub_model(Snippet,
      :title => "MyString",
      :body => "MyText"
    ).as_new_record)
  end

  it "renders new snippet form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => snippets_path, :method => "post" do
      assert_select "input#snippet_title", :name => "snippet[title]"
      assert_select "textarea#snippet_body", :name => "snippet[body]"
    end
  end
end
