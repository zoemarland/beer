require 'rails_helper'

RSpec.describe "BrewedBeers", type: :request do
  describe "GET /brewed_beers" do
    it "works! (now write some real specs)" do
      get brewed_beers_path
      expect(response).to have_http_status(200)
    end
  end
end
