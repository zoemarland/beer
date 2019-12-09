require 'rails_helper'

RSpec.describe "brewed_beers/edit", type: :view do
  before(:each) do
    @brewed_beer = assign(:brewed_beer, BrewedBeer.create!(
      :name => "MyString",
      :brand => "MyString",
      :style => "MyString",
      :all_beer => nil
    ))
  end

  it "renders the edit brewed_beer form" do
    render

    assert_select "form[action=?][method=?]", brewed_beer_path(@brewed_beer), "post" do

      assert_select "input[name=?]", "brewed_beer[name]"

      assert_select "input[name=?]", "brewed_beer[brand]"

      assert_select "input[name=?]", "brewed_beer[style]"

      assert_select "input[name=?]", "brewed_beer[all_beer_id]"
    end
  end
end
