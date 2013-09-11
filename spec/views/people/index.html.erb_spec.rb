require 'spec_helper'

describe "people/index" do
  before(:each) do
    assign(:people, [
      stub_model(Person,
        :name => "Name",
        :federal_id => "Federal",
        :regional_id => "Regional",
        :social_security => "Social Security",
        :email => "Email",
        :mothers_name => "Mothers Name",
        :fathers_name => "Fathers Name",
        :phone_number => "Phone Number"
      ),
      stub_model(Person,
        :name => "Name",
        :federal_id => "Federal",
        :regional_id => "Regional",
        :social_security => "Social Security",
        :email => "Email",
        :mothers_name => "Mothers Name",
        :fathers_name => "Fathers Name",
        :phone_number => "Phone Number"
      )
    ])
  end

  it "renders a list of people" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Federal".to_s, :count => 2
    assert_select "tr>td", :text => "Regional".to_s, :count => 2
    assert_select "tr>td", :text => "Social Security".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Mothers Name".to_s, :count => 2
    assert_select "tr>td", :text => "Fathers Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
  end
end
