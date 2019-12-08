require 'rails_helper'

RSpec.describe "bookings/index", type: :view do
  before(:each) do
    assign(:bookings, [
      Booking.create!(
        :all_beer => nil,
        :customer => nil,
        :amount_of_people => 2
      ),
      Booking.create!(
        :all_beer => nil,
        :customer => nil,
        :amount_of_people => 2
      )
    ])
  end

  it "renders a list of bookings" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
