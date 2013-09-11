require 'spec_helper'

describe "type_addresses/index" do
  before(:each) do
    assign(:type_addresses, [
      stub_model(TypeAddress,
        :description => "Description"
      ),
      stub_model(TypeAddress,
        :description => "Description"
      )
    ])
  end

  it "renders a list of type_addresses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
