require 'rails_helper'

RSpec.describe "customers/new", type: :view do
  before(:each) do
    assign(:customer, Customer.new(
      :last_name => "MyString",
      :first_name => "MyString",
      :reservations_made => 1
    ))
  end

  it "renders new customer form" do
    render

    assert_select "form[action=?][method=?]", customers_path, "post" do

      assert_select "input[name=?]", "customer[last_name]"

      assert_select "input[name=?]", "customer[first_name]"

      assert_select "input[name=?]", "customer[reservations_made]"
    end
  end
end
