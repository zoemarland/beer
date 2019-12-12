class BeerController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :redirect_if_not_found

  def index
    load_brewery
  end
end

def load_brewery
  @brewery_default = Gmaps4rails.build_markers(AllBeer.all) do |plot, marker|
     marker.lat plot.latitude
     marker.lng plot.longitude

     marker.infowindow render_to_string(:partial => "/beer/info",
       :locals => {:name => plot.name, :city => plot.city, :id => plot.id })
  end
end
