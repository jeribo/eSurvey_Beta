require 'spec_helper'

describe "countries/index" do
  before(:each) do
    assign(:countries, [
      stub_model(Country,
        :description => "Description",
        :locale => "Locale",
        :abbreviated => "Abbreviated"
      ),
      stub_model(Country,
        :description => "Description",
        :locale => "Locale",
        :abbreviated => "Abbreviated"
      )
    ])
  end

  it "renders a list of countries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Locale".to_s, :count => 2
    assert_select "tr>td", :text => "Abbreviated".to_s, :count => 2
  end
end
