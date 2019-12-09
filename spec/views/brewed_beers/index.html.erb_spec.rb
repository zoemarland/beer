require 'rails_helper'

RSpec.describe "brewed_beers/index", type: :view do
  before(:each) do
    assign(:brewed_beers, [
      BrewedBeer.create!(
        :name => "Name",
        :brand => "Brand",
        :style => "Style",
        :all_beer => nil
      ),
      BrewedBeer.create!(
        :name => "Name",
        :brand => "Brand",
        :style => "Style",
        :all_beer => nil
      )
    ])
  end

  it "renders a list of brewed_beers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Brand".to_s, :count => 2
    assert_select "tr>td", :text => "Style".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
