require 'spec_helper'

describe "countries/edit" do
  before(:each) do
    @country = assign(:country, stub_model(Country,
      :description => "MyString",
      :locale => "MyString",
      :abbreviated => "MyString"
    ))
  end

  it "renders the edit country form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", country_path(@country), "post" do
      assert_select "input#country_description[name=?]", "country[description]"
      assert_select "input#country_locale[name=?]", "country[locale]"
      assert_select "input#country_abbreviated[name=?]", "country[abbreviated]"
    end
  end
end
