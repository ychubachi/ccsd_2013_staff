require 'spec_helper'

describe "blogs/index" do
  before(:each) do
    assign(:blogs, [
      stub_model(Blog,
        :title => "Title",
        :contents => "Contents",
        :date => "Date"
      ),
      stub_model(Blog,
        :title => "Title",
        :contents => "Contents",
        :date => "Date"
      )
    ])
  end

  it "renders a list of blogs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Contents".to_s, :count => 2
    assert_select "tr>td", :text => "Date".to_s, :count => 2
  end
end
