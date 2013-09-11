require 'spec_helper'

describe "type_addresses/show" do
  before(:each) do
    @type_address = assign(:type_address, stub_model(TypeAddress,
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
  end
end
