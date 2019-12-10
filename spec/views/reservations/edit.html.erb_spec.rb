require 'rails_helper'

RSpec.describe "reservations/edit", type: :view do
  before(:each) do
    @reservation = assign(:reservation, Reservation.create!(
      :customer => nil,
      :all_beer => nil
    ))
  end

  it "renders the edit reservation form" do
    render

    assert_select "form[action=?][method=?]", reservation_path(@reservation), "post" do

      assert_select "input[name=?]", "reservation[customer_id]"

      assert_select "input[name=?]", "reservation[all_beer_id]"
    end
  end
end
