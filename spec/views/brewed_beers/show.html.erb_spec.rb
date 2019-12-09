require 'rails_helper'

RSpec.describe "brewed_beers/show", type: :view do
  before(:each) do
    @brewed_beer = assign(:brewed_beer, BrewedBeer.create!(
      :name => "Name",
      :brand => "Brand",
      :style => "Style",
      :all_beer => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Brand/)
    expect(rendered).to match(/Style/)
    expect(rendered).to match(//)
  end
end
