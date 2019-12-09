require 'rails_helper'

RSpec.describe "brewed_beers/new", type: :view do
  before(:each) do
    assign(:brewed_beer, BrewedBeer.new(
      :name => "MyString",
      :brand => "MyString",
      :style => "MyString",
      :all_beer => nil
    ))
  end

  it "renders new brewed_beer form" do
    render

    assert_select "form[action=?][method=?]", brewed_beers_path, "post" do

      assert_select "input[name=?]", "brewed_beer[name]"

      assert_select "input[name=?]", "brewed_beer[brand]"

      assert_select "input[name=?]", "brewed_beer[style]"

      assert_select "input[name=?]", "brewed_beer[all_beer_id]"
    end
  end
end
