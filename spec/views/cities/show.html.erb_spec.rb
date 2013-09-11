require 'spec_helper'

describe "cities/show" do
  before(:each) do
    @city = assign(:city, stub_model(City,
      :description => "Description",
      :postal_code => "Postal Code",
      :state => nil,
      :contry => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    rendered.should match(/Postal Code/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
