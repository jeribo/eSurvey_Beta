require 'spec_helper'

describe "cities/edit" do
  before(:each) do
    @city = assign(:city, stub_model(City,
      :description => "MyString",
      :postal_code => "MyString",
      :state => nil,
      :contry => nil
    ))
  end

  it "renders the edit city form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", city_path(@city), "post" do
      assert_select "input#city_description[name=?]", "city[description]"
      assert_select "input#city_postal_code[name=?]", "city[postal_code]"
      assert_select "input#city_state[name=?]", "city[state]"
      assert_select "input#city_contry[name=?]", "city[contry]"
    end
  end
end
