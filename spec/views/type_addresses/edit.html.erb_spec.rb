require 'spec_helper'

describe "type_addresses/edit" do
  before(:each) do
    @type_address = assign(:type_address, stub_model(TypeAddress,
      :description => "MyString"
    ))
  end

  it "renders the edit type_address form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", type_address_path(@type_address), "post" do
      assert_select "input#type_address_description[name=?]", "type_address[description]"
    end
  end
end
