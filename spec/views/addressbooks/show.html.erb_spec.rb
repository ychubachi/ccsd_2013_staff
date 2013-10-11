require 'spec_helper'

describe "addressbooks/show" do
  before(:each) do
    @addressbook = assign(:addressbook, stub_model(Addressbook,
      :zip => "Zip",
      :address => "Address"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Zip/)
    rendered.should match(/Address/)
  end
end
