require 'spec_helper'

describe "addressbooks/edit" do
  before(:each) do
    @addressbook = assign(:addressbook, stub_model(Addressbook,
      :zip => "MyString",
      :address => "MyString"
    ))
  end

  it "renders the edit addressbook form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", addressbook_path(@addressbook), "post" do
      assert_select "input#addressbook_zip[name=?]", "addressbook[zip]"
      assert_select "input#addressbook_address[name=?]", "addressbook[address]"
    end
  end
end
