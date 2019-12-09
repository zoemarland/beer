require 'rails_helper'

RSpec.describe "customers/edit", type: :view do
  before(:each) do
    @customer = assign(:customer, Customer.create!(
      :last_name => "MyString",
      :first_name => "MyString",
      :email_address => "MyString"
    ))
  end

  it "renders the edit customer form" do
    render

    assert_select "form[action=?][method=?]", customer_path(@customer), "post" do

      assert_select "input[name=?]", "customer[last_name]"

      assert_select "input[name=?]", "customer[first_name]"

      assert_select "input[name=?]", "customer[email_address]"
    end
  end
end
