require 'rails_helper'

RSpec.describe "bookings/new", type: :view do
  before(:each) do
    assign(:booking, Booking.new(
      :all_beer => nil,
      :customer => nil,
      :amount_of_people => 1
    ))
  end

  it "renders new booking form" do
    render

    assert_select "form[action=?][method=?]", bookings_path, "post" do

      assert_select "input[name=?]", "booking[all_beer_id]"

      assert_select "input[name=?]", "booking[customer_id]"

      assert_select "input[name=?]", "booking[amount_of_people]"
    end
  end
end
