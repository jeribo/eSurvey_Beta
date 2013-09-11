require 'spec_helper'

describe "countries/show" do
  before(:each) do
    @country = assign(:country, stub_model(Country,
      :description => "Description",
      :locale => "Locale",
      :abbreviated => "Abbreviated"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    rendered.should match(/Locale/)
    rendered.should match(/Abbreviated/)
  end
end
