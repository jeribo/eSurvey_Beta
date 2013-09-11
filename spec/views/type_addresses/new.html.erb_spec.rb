require 'spec_helper'

describe "type_addresses/new" do
  before(:each) do
    assign(:type_address, stub_model(TypeAddress,
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new type_address form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", type_addresses_path, "post" do
      assert_select "input#type_address_description[name=?]", "type_address[description]"
    end
  end
end
