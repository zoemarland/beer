require 'rails_helper'

RSpec.describe "customers/show", type: :view do
  before(:each) do
    @customer = assign(:customer, Customer.create!(
      :last_name => "Last Name",
      :first_name => "First Name",
      :reservations_made => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/2/)
  end
end
