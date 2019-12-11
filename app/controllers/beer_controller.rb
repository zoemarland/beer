class BeerController < ApplicationController
  def index
    load_brewery
    @all_beers = AllBeer.all
  end
end

def load_brewery
  @brewery_default = Gmaps4rails.build_markers(AllBeer.all) do |plot, marker|
     marker.lat plot.latitude
     marker.lng plot.longitude

     marker.infowindow render_to_string(:partial => "/beer/info",
       :locals => {:name => plot.name, :city => plot.city })
  end
end
