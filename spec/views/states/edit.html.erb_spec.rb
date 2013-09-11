require 'spec_helper'

describe "states/edit" do
  before(:each) do
    @state = assign(:state, stub_model(State,
      :description => "MyString",
      :country => nil,
      :abbreviated => "MyString"
    ))
  end

  it "renders the edit state form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", state_path(@state), "post" do
      assert_select "input#state_description[name=?]", "state[description]"
      assert_select "input#state_country[name=?]", "state[country]"
      assert_select "input#state_abbreviated[name=?]", "state[abbreviated]"
    end
  end
end
