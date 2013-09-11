require 'spec_helper'

describe "states/new" do
  before(:each) do
    assign(:state, stub_model(State,
      :description => "MyString",
      :country => nil,
      :abbreviated => "MyString"
    ).as_new_record)
  end

  it "renders new state form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", states_path, "post" do
      assert_select "input#state_description[name=?]", "state[description]"
      assert_select "input#state_country[name=?]", "state[country]"
      assert_select "input#state_abbreviated[name=?]", "state[abbreviated]"
    end
  end
end
