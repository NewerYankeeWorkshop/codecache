require 'spec_helper'

describe "snippets/index.html.erb" do
  before(:each) do
    assign(:snippets, [
      stub_model(Snippet,
        :title => "Title",
        :body => "MyText"
      ),
      stub_model(Snippet,
        :title => "Title",
        :body => "MyText"
      )
    ])
  end

  it "renders a list of snippets" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
