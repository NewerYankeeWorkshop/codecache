require 'spec_helper'

describe "snippets/edit.html.erb" do
  before(:each) do
    @snippet = assign(:snippet, stub_model(Snippet,
      :new_record? => false,
      :title => "MyString",
      :body => "MyText"
    ))
  end

  it "renders the edit snippet form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => snippet_path(@snippet), :method => "post" do
      assert_select "input#snippet_title", :name => "snippet[title]"
      assert_select "textarea#snippet_body", :name => "snippet[body]"
    end
  end
end
