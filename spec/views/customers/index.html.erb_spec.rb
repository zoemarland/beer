require 'rails_helper'

RSpec.describe "customers/index", type: :view do
  before(:each) do
    assign(:customers, [
      Customer.create!(
        :last_name => "Last Name",
        :first_name => "First Name",
        :email_address => "Email Address"
      ),
      Customer.create!(
        :last_name => "Last Name",
        :first_name => "First Name",
        :email_address => "Email Address"
      )
    ])
  end

  it "renders a list of customers" do
    render
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email Address".to_s, :count => 2
  end
end
