require 'spec_helper'

describe "addressbooks/new" do
  before(:each) do
    assign(:addressbook, stub_model(Addressbook,
      :zip => "MyString",
      :address => "MyString"
    ).as_new_record)
  end

  it "renders new addressbook form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", addressbooks_path, "post" do
      assert_select "input#addressbook_zip[name=?]", "addressbook[zip]"
      assert_select "input#addressbook_address[name=?]", "addressbook[address]"
    end
  end
end
