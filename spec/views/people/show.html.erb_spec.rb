require 'spec_helper'

describe "people/show" do
  before(:each) do
    @person = assign(:person, stub_model(Person,
      :name => "Name",
      :federal_id => "Federal",
      :regional_id => "Regional",
      :social_security => "Social Security",
      :email => "Email",
      :mothers_name => "Mothers Name",
      :fathers_name => "Fathers Name",
      :phone_number => "Phone Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Federal/)
    rendered.should match(/Regional/)
    rendered.should match(/Social Security/)
    rendered.should match(/Email/)
    rendered.should match(/Mothers Name/)
    rendered.should match(/Fathers Name/)
    rendered.should match(/Phone Number/)
  end
end
