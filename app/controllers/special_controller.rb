class SpecialController < ApplicationController

  
  def index
  end
  
  def list
    squarelocation = "#{params[:lat]},#{params[:lng]}"
    client = Foursquare2::Client.new(:client_id => FOURSQUARE_CONFIG['client_id'], :client_secret => FOURSQUARE_CONFIG['client_secret'])
    @results = client.search_specials(:ll => squarelocation)
    render :layout => false
  end
  
end
