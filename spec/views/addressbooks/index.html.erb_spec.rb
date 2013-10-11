require 'spec_helper'

describe "addressbooks/index" do
  before(:each) do
    assign(:addressbooks, [
      stub_model(Addressbook,
        :zip => "Zip",
        :address => "Address"
      ),
      stub_model(Addressbook,
        :zip => "Zip",
        :address => "Address"
      )
    ])
  end

  it "renders a list of addressbooks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
  end
end
