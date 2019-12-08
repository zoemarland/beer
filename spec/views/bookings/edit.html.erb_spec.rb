require 'rails_helper'

RSpec.describe "bookings/edit", type: :view do
  before(:each) do
    @booking = assign(:booking, Booking.create!(
      :all_beer => nil,
      :customer => nil,
      :amount_of_people => 1
    ))
  end

  it "renders the edit booking form" do
    render

    assert_select "form[action=?][method=?]", booking_path(@booking), "post" do

      assert_select "input[name=?]", "booking[all_beer_id]"

      assert_select "input[name=?]", "booking[customer_id]"

      assert_select "input[name=?]", "booking[amount_of_people]"
    end
  end
end
